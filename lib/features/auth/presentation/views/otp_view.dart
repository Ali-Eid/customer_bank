import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:fs_bank/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

import '../../domain/models/login_model/input_login/input_login_model.dart';
import '../blocs/input_otp_cubit/input_otp_cubit.dart';

class OtpView extends StatefulWidget {
  final String phoneNumber;
  const OtpView({super.key, required this.phoneNumber});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  // final OtpFieldController otpController = OtpFieldController();
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

  late InputOtpCubit inputOtpCubit;

  @override
  void initState() {
    inputOtpCubit = InputOtpCubit(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: BlocBuilder(
        bloc: inputOtpCubit,
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text("Enter Your Pin",
                          style: Theme.of(context).textTheme.labelMedium),
                      SizedBox(height: AppSizeH.s16),
                      Text(
                        "please enter the code we sent to ${widget.phoneNumber}",
                        style: Theme.of(context).textTheme.titleSmall,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: AppSizeH.s30),
                      OtpPinField(
                          maxLength: 6,
                          key: _otpPinFieldController,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          fieldWidth: AppSizeW.s48,
                          autoFillEnable: false,
                          textInputAction: TextInputAction.done,
                          onSubmit: (text) {
                            context.read<AuthBloc>().add(AuthEvent.login(
                                input: InputLoginModel(
                                    phoneNumber: widget.phoneNumber,
                                    otp: text)));
                          },
                          onChange: (text) {
                            inputOtpCubit.setOtpCode(text);
                          },
                          otpPinFieldDecoration:
                              OtpPinFieldDecoration.defaultPinBoxDecoration,
                          otpPinFieldStyle: OtpPinFieldStyle(
                              activeFieldBackgroundColor: ColorManager.white,
                              activeFieldBorderColor: ColorManager.primary,
                              textStyle:
                                  Theme.of(context).textTheme.headlineSmall!))

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
                      //   style: Theme.of(context).textTheme.headlineSmall!,
                      //   textFieldAlignment: MainAxisAlignment.spaceAround,
                      //   fieldStyle: FieldStyle.box,
                      //   onChanged: (value) {
                      //     inputOtpCubit.setOtpCode(value);
                      //   },
                      //   contentPadding:
                      //       EdgeInsets.symmetric(vertical: AppSizeH.s17),
                      //   onCompleted: (pin) {
                      // context.read<AuthBloc>().add(AuthEvent.login(
                      //     input: InputLoginModel(
                      //         phoneNumber: widget.phoneNumber, otp: pin)));
                      //   },
                      // ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: BlocBuilder(
                      bloc: context.read<AuthBloc>(),
                      builder: (context, AuthState state) {
                        return state.maybeMap(
                          loading: (value) {
                            return const LinearProgressIndicator();
                          },
                          orElse: () {
                            return ElevatedButton(
                                onPressed: () {
                                  if (inputOtpCubit.otpCode.isNotEmpty ||
                                      inputOtpCubit.otpCode.length == 6) {
                                    context.read<AuthBloc>().add(
                                        AuthEvent.login(
                                            input: InputLoginModel(
                                                phoneNumber: widget.phoneNumber,
                                                otp: inputOtpCubit.otpCode)));
                                  }
                                },
                                child: const Text("Login"));
                          },
                        );
                      },
                    ))
                  ],
                ),
                SizedBox(height: AppSizeH.s24),
              ],
            ),
          );
        },
      ),
    );
  }
}
