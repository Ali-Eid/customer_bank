import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fs_bank/core/constants/assets_manager.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:fs_bank/core/utils/extensions.dart';
import 'package:fs_bank/core/widgets/toast_widget.dart';
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
import '../../../accounts/presentation/blocs/my_accounts_bloc/my_accounts_bloc.dart';
import '../../../accounts/presentation/widgets/drop_down_account_widget.dart';
import '../../../auth/presentation/blocs/input_otp_cubit/input_otp_cubit.dart';
import '../../../auth/presentation/widgets/otp_input_widget.dart';
import '../blocs/input_transfer_cubit/input_transfer_cubit.dart';
import '../blocs/transfer_bloc/transfer_bloc.dart';

class TransferMyAccountsView extends StatefulWidget {
  const TransferMyAccountsView({super.key});

  @override
  State<TransferMyAccountsView> createState() => _TransferMyAccountsViewState();
}

class _TransferMyAccountsViewState extends State<TransferMyAccountsView> {
  late TransferBloc transferBloc;
  late InputTransferCubit inputTransferCubit;
  late AuthBloc authBloc;

  final amountController = TextEditingController();
  final noteController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    transferBloc = instance<TransferBloc>();
    inputTransferCubit = InputTransferCubit(0);
    authBloc = instance<AuthBloc>();
    if (context.read<MyAccountsBloc>().accounts.isEmpty) {
      context.read<MyAccountsBloc>().add(MyAccountsEvent.getMyAccounts(
          customerId: context.read<AppBloc>().user?.customerId ?? 0));
    } else {
      context.read<MyAccountsBloc>().add(MyAccountsEvent.getMyAccounts(
          customerId: context.read<AppBloc>().user?.customerId ?? 0,
          isLoading: false));
      inputTransferCubit.setAccounts(context.read<MyAccountsBloc>().accounts);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Transfers",
          ),
        ),
        body: BlocListener(
          bloc: transferBloc,
          listener: (context, TransferState state) {
            state.mapOrNull(
              successConfirmLocalTransfer: (value) {
                context.read<MyAccountsBloc>().add(
                    MyAccountsEvent.getMyAccounts(
                        customerId: instance<AppPreferences>()
                                .getUserInfo()
                                ?.customerId ??
                            0));
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
                      label: "Confirm Local",
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
                    child: BlocConsumer(
                      listener: (context, MyAccountsState state) {
                        state.mapOrNull(
                          loaded: (value) {
                            inputTransferCubit.setAccounts(
                                context.read<MyAccountsBloc>().accounts);
                          },
                        );
                      },
                      bloc: context.read<MyAccountsBloc>(),
                      builder: (context, state) {
                        return context.read<MyAccountsBloc>().accounts.isEmpty
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : BlocBuilder(
                                bloc: inputTransferCubit,
                                builder: (context, state) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: AppSizeH.s16),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            DropDownAccountWidget(
                                              items: inputTransferCubit
                                                  .fromAccounts,
                                              label: "Sender account",
                                              onChanged: (account) {
                                                inputTransferCubit
                                                    .setFromAccount(account);
                                              },
                                              validator: (value) {
                                                if (value == null) {
                                                  return "Please select the sender account";
                                                }
                                                return null;
                                              },
                                            ),
                                            SizedBox(height: AppSizeH.s24),
                                            DropDownAccountWidget(
                                              items:
                                                  inputTransferCubit.toAccounts,
                                              label: "Recipient account",
                                              onChanged: (account) {
                                                inputTransferCubit
                                                    .setToAccount(account);
                                              },
                                              validator: (value) {
                                                if (value == null) {
                                                  return "Please select the recipient account";
                                                }
                                                return null;
                                              },
                                            ),
                                            SizedBox(height: AppSizeH.s24),
                                            TextFormField(
                                              controller: amountController,
                                              keyboardType:
                                                  TextInputType.number,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineLarge,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Please enter amount';
                                                }
                                                return null;
                                              },
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              decoration: const InputDecoration(
                                                  hintText: "Amount"),
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
                                              decoration: const InputDecoration(
                                                  hintText: "Currency"),
                                            ),
                                            SizedBox(height: AppSizeH.s24),
                                            TextFormField(
                                              controller: noteController,
                                              keyboardType: TextInputType.text,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineLarge,
                                              decoration: const InputDecoration(
                                                  hintText: "Note"),
                                            ),
                                            SizedBox(height: AppSizeH.s32),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          // ElevatedButton(
                                          //   style: ButtonStyle(
                                          //       backgroundColor:
                                          //           WidgetStateProperty.all(
                                          //               ColorManager.white),
                                          //       shape: WidgetStateProperty.all(
                                          //           RoundedRectangleBorder(
                                          //               borderRadius:
                                          //                   BorderRadius
                                          //                       .circular(
                                          //                           AppSizeR
                                          //                               .s8),
                                          //               side: BorderSide(
                                          //                   color: ColorManager
                                          //                       .persimmon)))),
                                          //   onPressed: () {
                                          //     context.pop();
                                          //   },
                                          //   child: Text(
                                          //     "Back",
                                          //     style: Theme.of(context)
                                          //         .textTheme
                                          //         .headlineMedium!
                                          //         .copyWith(
                                          //             color: ColorManager
                                          //                 .persimmon),
                                          //   ),
                                          // ),
                                          // SizedBox(width: AppSizeW.s8),
                                          Expanded(
                                            child: BlocBuilder(
                                              bloc: transferBloc,
                                              builder: (context,
                                                  TransferState state) {
                                                return state.maybeMap(
                                                  loading: (value) =>
                                                      const LinearProgressIndicator(),
                                                  orElse: () {
                                                    return ElevatedButton(
                                                      onPressed: () {
                                                        if (_formKey
                                                            .currentState!
                                                            .validate()) {
                                                          transferBloc.add(
                                                            TransferEvent
                                                                .storeLocalTransferMyAccounts(
                                                              input: InputTransferModel(
                                                                  fromAccount: inputTransferCubit
                                                                          .fromAccount
                                                                          ?.accountNumber ??
                                                                      "",
                                                                  toAccount: inputTransferCubit
                                                                          .toAccount
                                                                          ?.accountNumber ??
                                                                      "",
                                                                  amount: int.parse(
                                                                      amountController
                                                                          .text),
                                                                  currencyCode:
                                                                      "US Dollar",
                                                                  note:
                                                                      noteController
                                                                          .text),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      child:
                                                          const Text("Confirm"),
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
                              );
                      },
                    ),
                  ),
                ),
              ),
            );
          }),
        ));
  }
}

class ConfirmTransferWidget extends StatefulWidget {
  final StoreTransferModel model;
  final String label;
  final TypeTransfer type;
  final TransferBloc transferBloc;
  const ConfirmTransferWidget({
    super.key,
    required this.model,
    required this.transferBloc,
    required this.label,
    required this.type,
  });

  @override
  State<ConfirmTransferWidget> createState() => _ConfirmTransferWidgetState();
}

class _ConfirmTransferWidgetState extends State<ConfirmTransferWidget> {
  late InputOtpCubit inputOtpCubit;
  @override
  void initState() {
    widget.model.withOtp ? inputOtpCubit = InputOtpCubit(0) : null;
    super.initState();
  }

  @override
  void dispose() {
    widget.model.withOtp ? inputOtpCubit.close() : null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: AppSizeH.s8, horizontal: AppSizeW.s16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(widget.label,
                  style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(height: AppSizeH.s16),
              LottieBuilder.asset(
                JsonAssets.lcoalTransfer,
                height: AppSizeH.s100,
              ),
              SizedBox(height: AppSizeH.s16),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSizeR.s6)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: AppSizeH.s8, horizontal: AppSizeW.s16),
                    child: Column(
                        spacing: AppSizeH.s15,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BuildInfoRow(
                              label: "From Account No:",
                              value: widget.model.fromAccountNo),
                          Divider(height: AppSizeH.s1),
                          BuildInfoRow(
                              label: "To Account No:",
                              value: widget.model.toAccountNo),
                          Divider(height: AppSizeH.s1),
                          BuildInfoRow(
                              label: "Amount:",
                              value: "${widget.model.amount}"),
                          Divider(height: AppSizeH.s1),
                          BuildInfoRow(
                              label: "Note:", value: widget.model.note),
                          Divider(height: AppSizeH.s1),
                          widget.model.withOtp
                              ? Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(AppStrings().enterOtp,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge!
                                            .copyWith(
                                                fontWeight: FontWeight.w700)),
                                    SizedBox(height: AppSizeH.s16),
                                    OtpInputWidget(
                                      inputOtpCubit: inputOtpCubit,
                                      onSubmit: (value) {
                                        widget.transferBloc.add(TransferEvent
                                            .confirmLocalTransferMyAccounts(
                                                input:
                                                    InputConfirmTransferModel(
                                                        refId:
                                                            widget.model.refId,
                                                        otp: value)));
                                      },
                                    ),
                                    SizedBox(height: AppSizeH.s16),
                                    Divider(height: AppSizeH.s1),
                                    SizedBox(height: AppSizeH.s16),
                                  ],
                                )
                              : const SizedBox()
                        ]),
                  )),
              SizedBox(height: AppSizeH.s16),
              BlocBuilder(
                bloc: widget.transferBloc,
                builder: (context, TransferState state) {
                  return state.maybeMap(
                    loading: (value) => Padding(
                      padding: EdgeInsets.symmetric(vertical: AppSizeH.s16),
                      child: const LinearProgressIndicator(),
                    ),
                    orElse: () {
                      return Row(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(ColorManager.white),
                                shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(AppSizeR.s8),
                                        side: BorderSide(
                                            color: ColorManager.persimmon)))),
                            onPressed: () {
                              context.pop();
                            },
                            child: Text(
                              "Back",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(color: ColorManager.persimmon),
                            ),
                          ),
                          SizedBox(width: AppSizeW.s8),
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () {
                                  if (widget.model.withOtp) {
                                    if (inputOtpCubit.otpCode.isNotEmpty &&
                                        inputOtpCubit.otpCode.length == 6) {
                                      widget.type == TypeTransfer.local
                                          ? widget.transferBloc.add(
                                              TransferEvent.confirmLocalTransferMyAccounts(
                                                  input: InputConfirmTransferModel(
                                                      refId: widget.model.refId,
                                                      otp: widget.model.withOtp
                                                          ? inputOtpCubit
                                                              .otpCode
                                                          : null)))
                                          : widget.transferBloc.add(TransferEvent
                                              .confirmInternalTransferMyAccounts(
                                                  input: InputConfirmTransferModel(
                                                      refId: widget.model.refId,
                                                      otp: widget.model.withOtp
                                                          ? inputOtpCubit
                                                              .otpCode
                                                          : null)));
                                    }
                                  } else {
                                    widget.type == TypeTransfer.local
                                        ? widget.transferBloc.add(TransferEvent
                                            .confirmLocalTransferMyAccounts(
                                                input: InputConfirmTransferModel(
                                                    refId: widget.model.refId,
                                                    otp: widget.model.withOtp
                                                        ? inputOtpCubit.otpCode
                                                        : null)))
                                        : widget.transferBloc.add(TransferEvent
                                            .confirmInternalTransferMyAccounts(
                                                input: InputConfirmTransferModel(
                                                    refId: widget.model.refId,
                                                    otp: widget.model.withOtp
                                                        ? inputOtpCubit.otpCode
                                                        : null)));
                                  }
                                },
                                child: const Text("Confirm")),
                          )
                        ],
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
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
