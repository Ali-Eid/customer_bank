import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/features/terms_deposit/domain/models/inputs_models/input_requrest_terms_deposit_model/input_request_terms_deposit_model.dart';
import 'package:fs_bank/features/terms_deposit/presentation/blocs/input_terms_deposit_cubit/input_terms_deposit_cubit.dart';
import 'package:fs_bank/features/terms_deposit/presentation/blocs/term_deposit_bloc/term_deposit_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/cache/app_preferences.dart';
import '../../../../core/cache/keys_preferences.dart';
import '../../../../core/constants/string_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/generic_drop_down_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../accounts/domain/models/account_model/account_model.dart';
import '../../domain/models/package_terms_deposit_model/package_terms_deposit_model.dart';

class TermsDepositView extends StatelessWidget {
  TermsDepositView({super.key});
  final formKey = GlobalKey<FormState>();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => instance<TermDepositBloc>()
            ..add(const TermDepositEvent.getPackagesTermsDeposit()),
        ),
        BlocProvider(
          create: (_) => InputTermsDepositCubit(0),
        )
      ],
      child: BlocBuilder<InputTermsDepositCubit, int>(
        builder: (context, state) {
          return Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizeW.s20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: AppSizeH.s16),
                  Text(
                    "Create Terms deposit",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(height: AppSizeH.s24),
                  GenericDropdownField<AccountModel>(
                    items: instance<AppPreferences>().getList<AccountModel>(
                        KeysPreferences.PREFS_KEY_ACCOUNTS,
                        AccountModel.fromJson),
                    itemToString: (value) => value.accountNumber,
                    onChanged: (account) {
                      context
                          .read<InputTermsDepositCubit>()
                          .setAccount(account);
                    },
                    validator: (value) {
                      if (value == null) {
                        return AppStrings().pleaseSelectSenderAccount;
                      }
                      return null;
                    },
                    hintText: AppStrings().myAccounts,
                  ),
                  SizedBox(height: AppSizeH.s24),
                  BlocBuilder<TermDepositBloc, TermDepositState>(
                    builder: (context, state) {
                      return GenericDropdownField<PackageTermsDepositModel>(
                          hintText: "package",
                          validator: (value) {
                            if (context
                                    .read<InputTermsDepositCubit>()
                                    .packageId ==
                                null) {
                              return "please select page count of chequebook";
                            }
                            return null;
                          },
                          isLoading: state.isLoadingPackages,
                          onChanged: (package) {
                            context
                                .read<InputTermsDepositCubit>()
                                .setPackage(package);
                          },
                          items: state.isLoadingPackages ? [] : state.packages,
                          itemToString: (value) => value.durationType);
                    },
                  ),
                  SizedBox(height: AppSizeH.s24),
                  TextFormField(
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    style: Theme.of(context).textTheme.headlineLarge,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppStrings().pleaseEnterAmount;
                      }
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(hintText: AppStrings().amount),
                  ),
                  SizedBox(height: AppSizeH.s24),
                  BlocBuilder<TermDepositBloc, TermDepositState>(
                    builder: (context, state) {
                      if (state.isLoadingTermsDeposit) {
                        return const LoadingWidget();
                      }

                      return Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.only(end: AppSizeW.s10),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                        ColorManager.secondary)),
                                onPressed: () {
                                  context.pop();
                                },
                                child: Text(AppStrings().back)),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState?.validate() ?? false) {
                                  context.read<TermDepositBloc>().add(
                                      TermDepositEvent.requestTermsDeposit(
                                          input: InputRequestTermsDepositModel(
                                              packageId: context
                                                      .read<
                                                          InputTermsDepositCubit>()
                                                      .packageId ??
                                                  0,
                                              amount: int.parse(
                                                  amountController.text),
                                              accountId: context
                                                      .read<
                                                          InputTermsDepositCubit>()
                                                      .accountId ??
                                                  0)));
                                }
                              },
                              child: const Text("Create"),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(
                    height: AppSizeH.s24,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
