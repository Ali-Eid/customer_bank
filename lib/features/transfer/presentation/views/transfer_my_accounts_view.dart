import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fs_bank/core/cache/keys_preferences.dart';
import 'package:fs_bank/core/constants/assets_manager.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:fs_bank/core/utils/extensions.dart';
import 'package:fs_bank/core/widgets/generic_drop_down_widget.dart';
import 'package:fs_bank/core/widgets/loading_widget.dart';
import 'package:fs_bank/core/widgets/toast_widget.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';
import 'package:fs_bank/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:fs_bank/features/splash/presentation/blocs/app_bloc/app_bloc.dart';
import 'package:fs_bank/features/transfer/domain/models/inputs_models/input_confirm_transfer_model/input_confirm_transfer_model.dart';
import 'package:fs_bank/features/transfer/domain/models/inputs_models/input_transfer_model.dart';
import 'package:fs_bank/features/transfer/domain/models/transfere_model/transfere_model.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/bases/enums/type_transfer.dart';
import '../../../../core/cache/app_preferences.dart';
import '../../../../core/constants/string_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
// import '../../../../core/widgets/otp_field_widget/otp_pin_field.dart';
import '../../../../core/widgets/bottom_sheet_base_widget.dart';
import '../../../accounts/presentation/blocs/account_bloc/account_bloc.dart';
import '../../../accounts/presentation/widgets/drop_down_account_widget.dart';
import '../../../auth/presentation/blocs/input_otp_cubit/input_otp_cubit.dart';
import '../../../auth/presentation/widgets/otp_input_widget.dart';
import '../blocs/input_transfer_cubit/input_transfer_cubit.dart';
import '../blocs/transfer_bloc/transfer_bloc.dart';
import '../widgets/confirm_transfer_widget.dart';

class TransferMyAccountsView extends StatefulWidget {
  const TransferMyAccountsView({super.key});

  @override
  State<TransferMyAccountsView> createState() => _TransferMyAccountsViewState();
}

class _TransferMyAccountsViewState extends State<TransferMyAccountsView> {
  late TransferBloc transferBloc;
  late InputTransferCubit inputTransferCubit;
  final amountController = TextEditingController();
  final noteController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    transferBloc = instance<TransferBloc>();
    inputTransferCubit = InputTransferCubit(0);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            AppStrings().myTransfers,
          ),
        ),
        body: BlocListener(
          bloc: transferBloc,
          listener: (context, TransferState state) {
            state.mapOrNull(
              successConfirmLocalTransfer: (value) {
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
              successStoreLocalTransfer: (value) {
                showMyBottomSheet(
                    context,
                    ConfirmTransferWidget(
                      label: AppStrings().confirm,
                      type: TypeTransfer.local,
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
                                    GenericDropdownField<AccountModel>(
                                      items:
                                          inputTransferCubit.fromAccount != null
                                              ? inputTransferCubit.toAccounts
                                              : [],
                                      itemToString: (value) =>
                                          value.accountNumber,
                                      onChanged: (account) {
                                        inputTransferCubit
                                            .setToAccount(account);
                                      },
                                      selectedValue:
                                          inputTransferCubit.toAccount,
                                      validator: (value) {
                                        if (value == null) {
                                          return AppStrings()
                                              .pleaseSelectRecipientAccount;
                                        }
                                        return null;
                                      },
                                      hintText: AppStrings().recipientAccount,
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
                                                        .storeLocalTransferMyAccounts(
                                                      input: InputTransferModel(
                                                          fromAccount:
                                                              inputTransferCubit
                                                                      .fromAccount
                                                                      ?.accountNumber ??
                                                                  "",
                                                          toAccount:
                                                              inputTransferCubit
                                                                      .toAccount
                                                                      ?.accountNumber ??
                                                                  "",
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

class BuildInfoRow extends StatelessWidget {
  final String label;
  final String value;
  const BuildInfoRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            value,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ],
    );
  }
}
