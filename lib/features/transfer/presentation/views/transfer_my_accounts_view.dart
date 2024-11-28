import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fs_bank/core/utils/extensions.dart';
import 'package:fs_bank/core/widgets/toast_widget.dart';
import 'package:fs_bank/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:fs_bank/features/splash/presentation/blocs/app_bloc/app_bloc.dart';
import 'package:fs_bank/features/transfer/domain/models/inputs_models/input_transfer_model.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
// import '../../../../core/widgets/otp_field_widget/otp_pin_field.dart';
import '../../../accounts/presentation/blocs/my_accounts_bloc/my_accounts_bloc.dart';
import '../../../accounts/presentation/widgets/drop_down_account_widget.dart';
import '../../../auth/presentation/blocs/input_otp_cubit/input_otp_cubit.dart';
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
  late InputOtpCubit inputOtpCubit;
  final PageController _pageController = PageController();
  final amountController = TextEditingController();
  // final OtpFieldController otpController = OtpFieldController();
  // final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    transferBloc = instance<TransferBloc>();
    inputTransferCubit = InputTransferCubit(0);
    authBloc = instance<AuthBloc>();
    inputOtpCubit = InputOtpCubit(0);
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
    return Padding(
      padding: EdgeInsets.all(AppSizeW.s16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: AppSizeH.s16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Transfer between my accounts",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: AppSizeH.s16),
          SizedBox(
            height: ScreenUtil.defaultSize.height * 0.6,
            child: Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  Form(
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
                                            SizedBox(height: AppSizeH.s32),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    WidgetStateProperty.all(
                                                        ColorManager.white),
                                                shape: WidgetStateProperty.all(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    AppSizeR
                                                                        .s8),
                                                        side: BorderSide(
                                                            color: ColorManager
                                                                .persimmon)))),
                                            onPressed: () {
                                              context.pop();
                                            },
                                            child: Text(
                                              "Back",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium!
                                                  .copyWith(
                                                      color: ColorManager
                                                          .persimmon),
                                            ),
                                          ),
                                          SizedBox(width: AppSizeW.s8),
                                          Expanded(
                                              child: BlocBuilder(
                                            bloc: authBloc,
                                            builder:
                                                (context, AuthState state) {
                                              return state.maybeMap(
                                                loading: (value) {
                                                  return const LinearProgressIndicator();
                                                },
                                                orElse: () {
                                                  return ElevatedButton(
                                                      onPressed: () {
                                                        if (_formKey
                                                            .currentState!
                                                            .validate()) {
                                                          _pageController
                                                              .animateToPage(
                                                            1,
                                                            duration:
                                                                const Duration(
                                                                    milliseconds:
                                                                        600),
                                                            curve: Curves
                                                                .easeInOut,
                                                          );
                                                          // authBloc.add(AuthEvent.sendOtp(
                                                          //     phoneNumber: context
                                                          //             .read<AppBloc>()
                                                          //             .user
                                                          //             ?.phoneNumber ??
                                                          //         "0"));
                                                        }
                                                      },
                                                      child: const Text(
                                                          "Confirm"));
                                                },
                                              );
                                            },
                                          )),
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
                  BlocListener(
                    bloc: transferBloc,
                    listener: (context, TransferState state) {
                      state.mapOrNull(
                        success: (value) {
                          Timer(
                            const Duration(seconds: 4),
                            () {
                              context.read<MyAccountsBloc>().add(
                                  MyAccountsEvent.getMyAccounts(
                                      customerId: context
                                              .read<AppBloc>()
                                              .user
                                              ?.customerId ??
                                          0));
                              context.pop();
                              showToast(
                                  context: context, message: value.message);
                            },
                          );
                        },
                        error: (value) {
                          context.pop();
                          showToast(
                              context: context,
                              message: value.message,
                              color: ColorManager.persimmon);
                        },
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "please enter the code",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(fontSize: AppSizeSp.s16),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: AppSizeH.s30),
                              // OtpPinField(
                              //     maxLength: 6,
                              //     key: _otpPinFieldController,
                              //     mainAxisAlignment:
                              //         MainAxisAlignment.spaceBetween,
                              //     fieldWidth: AppSizeW.s48,
                              //     autoFillEnable: false,
                              //     textInputAction: TextInputAction.done,
                              //     onSubmit: (text) {
                              //       transferBloc.add(
                              //           TransferEvent.transferMyAccounts(
                              //               otp: inputOtpCubit.otpCode,
                              //               input: InputTransferModel(
                              //                   fromAccount:
                              //                       inputTransferCubit
                              //                               .fromAccount
                              //                               ?.accountNumber ??
                              //                           "",
                              //                   toAccount: inputTransferCubit
                              //                           .toAccount
                              //                           ?.accountNumber ??
                              //                       "",
                              //                   transferDate: DateTime.now()
                              //                       .toFormattedStringTransfer(),
                              //                   amount: num.parse(
                              //                       amountController.text),
                              //                   description: "from mobile")));
                              //     },
                              //     onChange: (text) {
                              //       inputOtpCubit.setOtpCode(text);
                              //     },
                              //     otpPinFieldDecoration: OtpPinFieldDecoration
                              //         .defaultPinBoxDecoration,
                              //     otpPinFieldStyle: OtpPinFieldStyle(
                              //         activeFieldBackgroundColor:
                              //             ColorManager.white,
                              //         activeFieldBorderColor:
                              //             ColorManager.primary,
                              //         textStyle: Theme.of(context)
                              //             .textTheme
                              //             .headlineSmall!))

                              // OTPTextField(
                              //   controller: otpController,
                              //   length: 6,
                              //   keyboardType: TextInputType.number,
                              //   inputFormatter: [
                              //     FilteringTextInputFormatter.digitsOnly
                              //   ],
                              //   otpFieldStyle: OtpFieldStyle(
                              //       backgroundColor: ColorManager.white,
                              //       focusBorderColor: ColorManager.primary,
                              //       borderColor: ColorManager.labelSecondary),
                              //   width: MediaQuery.of(context).size.width,
                              //   fieldWidth: AppSizeW.s48,
                              //   style:
                              //       Theme.of(context).textTheme.headlineSmall!,
                              //   textFieldAlignment:
                              //       MainAxisAlignment.spaceAround,
                              //   fieldStyle: FieldStyle.box,
                              //   onChanged: (value) {
                              // inputOtpCubit.setOtpCode(value);
                              //   },
                              //   contentPadding: EdgeInsets.symmetric(
                              //       vertical: AppSizeH.s17),
                              //   onCompleted: (pin) {},
                              // ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                      ColorManager.white),
                                  shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              AppSizeR.s8),
                                          side: BorderSide(
                                              color: ColorManager.persimmon)))),
                              onPressed: () {
                                _pageController.animateToPage(
                                  0,
                                  duration: const Duration(milliseconds: 600),
                                  curve: Curves.easeInOut,
                                );
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
                                child: BlocBuilder(
                              bloc: transferBloc,
                              builder: (context, TransferState state) {
                                return state.maybeMap(
                                  loading: (value) {
                                    return const LinearProgressIndicator();
                                  },
                                  orElse: () {
                                    return ElevatedButton(
                                        onPressed: () {
                                          if (inputOtpCubit
                                                  .otpCode.isNotEmpty ||
                                              inputOtpCubit.otpCode.length ==
                                                  6) {
                                            transferBloc.add(TransferEvent.transferMyAccounts(
                                                otp: inputOtpCubit.otpCode,
                                                input: InputTransferModel(
                                                    fromAccount:
                                                        inputTransferCubit
                                                                .fromAccount
                                                                ?.accountNumber ??
                                                            "",
                                                    toAccount: inputTransferCubit
                                                            .toAccount
                                                            ?.accountNumber ??
                                                        "",
                                                    transferDate: DateTime.now()
                                                        .toFormattedStringTransfer(),
                                                    amount: num.parse(
                                                        amountController.text),
                                                    description:
                                                        "from mobile")));
                                          }
                                        },
                                        child: const Text("Confirm"));
                                  },
                                );
                              },
                            )),
                          ],
                        ),
                        SizedBox(
                          height: AppSizeH.s24,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
