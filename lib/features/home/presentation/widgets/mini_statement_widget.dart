import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_file/open_file.dart';

import '../../../../core/constants/string_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/widgets/generic_drop_down_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../accounts/presentation/blocs/account_bloc/account_bloc.dart';
import 'item_transaction_widget.dart';

class MiniStatementsWidget extends StatelessWidget {
  final int accountId;
  const MiniStatementsWidget({
    super.key,
    required this.accountId,
  });

  @override
  Widget build(BuildContext context) {
    context
        .read<AccountBloc>()
        .add(AccountEvent.getAccountStatements(accountId: accountId));
    context
        .read<AccountBloc>()
        .add(const AccountEvent.getAccountStatementsSettings());

    return BlocConsumer(
      listener: (context, AccountState state) {
        if (state.successPdf && state.pdf.isNotEmpty) {
          OpenFile.open(state.pdf);
        }
      },
      bloc: context.read<AccountBloc>(),
      builder: (context, AccountState state) {
        if (state.isLoadingStatements) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: AppSizeH.s12),
                child: Text(
                  AppStrings().transactions,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(AppSizeW.s4),
                child: GenericDropdownField<int>(
                  hintText: AppStrings().statementPeriod,
                  isLoading: state.isLoadingStatementsSettings,
                  items: List.generate(state.statementsSettings.viewMaxPeriod,
                      (index) => index + 1),
                  itemToString: (value) => value.toString(),
                  selectedValue: context.read<AccountBloc>().period,
                  menuMaxHeight: AppSizeH.s200,
                  // onChanged: (value) {
                  //   context.read<AccountBloc>().add(
                  //       AccountEvent.getAccountStatements(
                  //           accountId: accountId, maxPeriod: value));
                  // },
                ),
              ),
              Expanded(
                child: Center(
                    child: LoadingWidget(
                  height: AppSizeH.s75,
                )),
              ),
            ],
          );
        }
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: AppSizeH.s12),
              child: Text(
                AppStrings().transactions,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(AppSizeW.s4),
              child: GenericDropdownField<int>(
                hintText: AppStrings().statementPeriod,
                isLoading: state.isLoadingStatementsSettings,
                items: List.generate(state.statementsSettings.viewMaxPeriod,
                    (index) => index + 1),
                itemToString: (value) => value.toString(),
                selectedValue: context.read<AccountBloc>().period,
                menuMaxHeight: AppSizeH.s200,
                onChanged: (value) {
                  context.read<AccountBloc>().add(
                      AccountEvent.getAccountStatements(
                          accountId: accountId, maxPeriod: value));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizeW.s4)
                  .copyWith(bottom: AppSizeW.s4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Visibility(
                    visible: (context.read<AccountBloc>().period ?? 0) <=
                        context
                            .read<AccountBloc>()
                            .state
                            .statementsSettings
                            .exportMaxPeriod,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        state.isLoadingExport
                            ? LoadingWidget(height: AppSizeH.s30)
                            : const SizedBox(),
                        SizedBox(
                          height: AppSizeH.s25,
                          child: state.successPdf && state.pdf.isNotEmpty
                              ? ElevatedButton(
                                  onPressed: () {
                                    OpenFile.open(state.pdf);
                                  },
                                  child: const Text("Show as a pdf"))
                              : ElevatedButton(
                                  onPressed: state.isLoadingExport
                                      ? null
                                      : () {
                                          context.read<AccountBloc>().add(
                                              AccountEvent
                                                  .exportAccountStatements(
                                                      accountId: accountId,
                                                      maxPeriod: context
                                                          .read<AccountBloc>()
                                                          .period));
                                        },
                                  child: const Text("Export as a pdf")),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: state.transactions.transactions.length,
                itemBuilder: (context, index) {
                  return ItemTransactionWidget(
                      model: state.transactions.transactions[index]);
                },
              ),
            )
          ],
        );
      },
    );
  }
}
