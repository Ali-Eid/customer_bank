import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/features/accounts/presentation/blocs/account_bloc/account_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/bases/enums/type_transfer.dart';
import '../../../../core/cache/app_preferences.dart';
import '../../../../core/cache/keys_preferences.dart';
import '../../../../core/constants/assets_manager.dart';
import '../../../../core/constants/string_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/routers/routes_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/bottom_sheet_base_widget.dart';
import '../../../../core/widgets/generic_drop_down_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/toast_widget.dart';
import '../../../accounts/domain/models/account_model/account_model.dart';
import '../../../accounts/presentation/widgets/drop_down_account_widget.dart';
import '../../../auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import '../../../beneficiary/presentation/blocs/bloc/beneficiary_bloc.dart';
import '../../../beneficiary/presentation/views/beneficiary_view.dart';
import '../../../beneficiary/presentation/widgets/select_beneficiary_widget.dart';
import '../../../splash/presentation/blocs/app_bloc/app_bloc.dart';
import '../../domain/models/inputs_models/input_transfer_model.dart';
import '../blocs/input_transfer_cubit/input_transfer_cubit.dart';
import '../blocs/transfer_bloc/transfer_bloc.dart';
import '../widgets/confirm_transfer_widget.dart';
import 'transfer_my_accounts_view.dart';

class TransferBankAccountsView extends StatefulWidget {
  const TransferBankAccountsView({super.key});

  @override
  State<TransferBankAccountsView> createState() =>
      _TransferBankAccountsViewState();
}

class _TransferBankAccountsViewState extends State<TransferBankAccountsView> {
  late TransferBloc transferBloc;
  late InputTransferCubit inputTransferCubit;

  final amountController = TextEditingController();
  final noteController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    transferBloc = instance<TransferBloc>();
    inputTransferCubit = InputTransferCubit(0);
    // if (context.read<MyAccountsBloc>().accounts.isEmpty) {
    //   context.read<MyAccountsBloc>().add(MyAccountsEvent.getMyAccounts(
    //       customerId: context.read<AppBloc>().user?.customerId ?? 0));
    // } else {
    //   context.read<MyAccountsBloc>().add(MyAccountsEvent.getMyAccounts(
    //       customerId: context.read<AppBloc>().user?.customerId ?? 0,
    //       isLoading: false));
    //   inputTransferCubit.setAccounts(context.read<MyAccountsBloc>().accounts);
    // }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            AppStrings().internalTransfer,
          ),
        ),
        body: BlocListener(
          bloc: transferBloc,
          listener: (context, TransferState state) {
            state.mapOrNull(
              successConfirmInternalTransfer: (value) {
                context
                    .read<AccountBloc>()
                    .add(const AccountEvent.getAccounts());
                showToast(context: context, message: value.confirm.message);
                context.pop();
                context.goNamed(RoutesNames.transferRoute);
              },
              error: (value) {
                context.pop();
                showToast(
                    context: context,
                    message: value.message,
                    color: ColorManager.persimmon);
              },
              successStoreInternalTransfer: (value) {
                showMyBottomSheet(
                    context,
                    ConfirmTransferWidget(
                      label:
                          "${AppStrings().confirm} ${AppStrings().internalTransfer}",
                      type: TypeTransfer.internal,
                      model: value.store.data,
                      transferBloc: transferBloc,
                    ),
                    isDismissible: false,
                    enableDrag: false);
              },
            );
          },
          child: LayoutBuilder(builder: (context, constraints) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16).copyWith(
                  bottom: MediaQuery.of(context)
                      .viewInsets
                      .bottom), // Adjusts for the keyboard
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Form(
                      key: _formKey,
                      child: BlocBuilder(
                        bloc: inputTransferCubit,
                        builder: (context, state) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: AppSizeH.s16),
                              Expanded(
                                child: Column(
                                  children: [
                                    GenericDropdownField<AccountModel>(
                                      items: instance<AppPreferences>()
                                          .getList<AccountModel>(
                                              KeysPreferences
                                                  .PREFS_KEY_ACCOUNTS,
                                              AccountModel.fromJson),
                                      itemToString: (value) =>
                                          value.accountNumber,
                                      onChanged: (account) {
                                        inputTransferCubit
                                            .setFromAccount(account);
                                      },
                                      validator: (value) {
                                        if (value == null) {
                                          return AppStrings()
                                              .pleaseSelectSenderAccount;
                                        }
                                        return null;
                                      },
                                      hintText: AppStrings().senderAccount,
                                    ),
                                    SizedBox(height: AppSizeH.s24),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                          height: AppSizeH.s25,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              showMyBottomSheet(
                                                context,
                                                MultiBlocProvider(
                                                  providers: [
                                                    BlocProvider(
                                                      create: (context) => instance<
                                                          BeneficiaryBloc>()
                                                        ..add(const BeneficiaryEvent
                                                            .getBeneficiaries()),
                                                    ),
                                                    BlocProvider.value(
                                                        value:
                                                            inputTransferCubit)
                                                  ],
                                                  child: SizedBox(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.7,
                                                      child:
                                                          const SelectBeneficiaryWidget()),
                                                ),
                                              );
                                              // context.pushNamed(
                                              //     RoutesNames
                                              //         .beneficiaryRoute);
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(Icons.star,
                                                    size: AppSizeW.s16),
                                                Text(AppStrings().favorite)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: AppSizeH.s6),
                                    TextFormField(
                                      controller: inputTransferCubit
                                          .toAccountNoController,
                                      keyboardType: TextInputType.number,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return AppStrings()
                                              .pleaseEnterRecipientAccount;
                                        }
                                        return null;
                                      },
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                          hintText:
                                              AppStrings().recipientAccount),
                                    ),
                                    SizedBox(height: AppSizeH.s24),
                                    TextFormField(
                                      controller: amountController,
                                      keyboardType: TextInputType.number,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return AppStrings().pleaseEnterAmount;
                                        }
                                        return null;
                                      },
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                          hintText: AppStrings().amount),
                                    ),
                                    SizedBox(height: AppSizeH.s24),
                                    TextFormField(
                                      readOnly: true,
                                      controller: TextEditingController(
                                          text: "US Dollar"),
                                      keyboardType: TextInputType.text,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge,
                                      decoration: InputDecoration(
                                          hintText: AppStrings().currency),
                                    ),
                                    SizedBox(height: AppSizeH.s24),
                                    TextFormField(
                                      controller: noteController,
                                      keyboardType: TextInputType.text,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge,
                                      decoration: InputDecoration(
                                          hintText: AppStrings().note),
                                    ),
                                    SizedBox(height: AppSizeH.s32),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: BlocBuilder(
                                      bloc: transferBloc,
                                      builder: (context, TransferState state) {
                                        return state.maybeMap(
                                          loading: (value) =>
                                              const LoadingWidget(),
                                          orElse: () {
                                            return ElevatedButton(
                                              onPressed: () {
                                                if (_formKey.currentState!
                                                    .validate()) {
                                                  transferBloc.add(
                                                    TransferEvent
                                                        .storeInternalTransferMyAccounts(
                                                      input: InputTransferModel(
                                                          fromAccount:
                                                              inputTransferCubit
                                                                      .fromAccount
                                                                      ?.accountNumber ??
                                                                  "",
                                                          toAccount:
                                                              inputTransferCubit
                                                                  .toAccountNoController
                                                                  .text,
                                                          amount: int.parse(
                                                              amountController
                                                                  .text),
                                                          currencyCode:
                                                              "US Dollar",
                                                          note: noteController
                                                              .text),
                                                    ),
                                                  );
                                                }
                                              },
                                              child: Text(AppStrings().confirm),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: AppSizeH.s24,
                              )
                            ],
                          );
                        },
                      )),
                ),
              ),
            );
          }),
        ));
  }
}
