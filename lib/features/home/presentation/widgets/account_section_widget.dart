import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/string_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/bottom_sheet_base_widget.dart';
import '../../../../core/widgets/custom_error_widget.dart';
import '../../../../core/widgets/shimmer_widget.dart';
import '../../../accounts/presentation/blocs/account_bloc/account_bloc.dart';
import '../../../accounts/presentation/widgets/account_home_widget.dart';
import 'mini_statement_widget.dart';

class AccountSectionWidget extends StatelessWidget {
  const AccountSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppSizeW.s16),
      margin: EdgeInsets.all(AppSizeW.s4),
      decoration: BoxDecoration(
        color: ColorManager.white,
        boxShadow: [
          BoxShadow(
            color: ColorManager.grey5,
            blurRadius: 5,
            spreadRadius: 0,
            offset: const Offset(0, 0.05),
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(AppSizeR.s15),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      AppStrings().myAccounts,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: ColorManager.secondary),
                    ),
                  ],
                ),
                SizedBox(height: AppSizeH.s4),
                Container(
                  height: AppSizeH.s10,
                  width: AppSizeW.s112,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSizeR.s4),
                    color: ColorManager.primary,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: AppSizeH.s8),
          SizedBox(
            height: AppSizeH.s220,
            child: BlocBuilder(
                bloc: context.read<AccountBloc>(),
                builder: (context, AccountState state) {
                  if (state.isLoading && state.accounts.isEmpty) {
                    return ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: EdgeInsetsDirectional.only(
                                end: index == 4 ? 0 : AppSizeW.s8),
                            child: ShimmerWidget(
                              child: Container(
                                height: AppSizeH.s220,
                                width: AppSizeW.s170,
                                decoration: BoxDecoration(
                                  color: ColorManager.white,
                                  borderRadius:
                                      BorderRadius.circular(AppSizeR.s8),
                                ),
                              ),
                            ));
                      },
                    );
                  }
                  if (state.hasError) {
                    return CustomErrorWidget(
                      message: state.messageError,
                      onPressed: () {
                        context
                            .read<AccountBloc>()
                            .add(const AccountEvent.getAccounts());
                      },
                    );
                  }
                  return state.accounts.isEmpty
                      ? Center(
                          child: Text(AppStrings().noAccounts,
                              style: Theme.of(context).textTheme.titleLarge))
                      : ListView.builder(
                          padding:
                              EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                          scrollDirection: Axis.horizontal,
                          itemCount: state.accounts.length,
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: EdgeInsetsDirectional.only(
                                    start: index == 0 ? 0 : AppSizeW.s8),
                                child: Stack(
                                  alignment: AlignmentDirectional.topEnd,
                                  children: [
                                    AccountHomeWidget(
                                        model: state.accounts[index]),
                                    IconButton(
                                        onPressed: () {
                                          showMyBottomSheet(
                                            context,
                                            SizedBox(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.8,
                                              child: MiniStatementsWidget(
                                                  accountId:
                                                      state.accounts[index].id),
                                            ),
                                          );
                                        },
                                        icon: Icon(Icons.currency_exchange,
                                            color: ColorManager.primary))
                                  ],
                                ));
                          },
                        );
                }),
          ),
        ],
      ),
    );
  }
}
