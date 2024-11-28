import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:fs_bank/core/widgets/toast_widget.dart';
import 'package:fs_bank/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:fs_bank/features/auth/presentation/widgets/otp_input_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/constants/assets_manager.dart';
import '../../../../core/routers/routes_manager.dart';
import '../../../splash/presentation/blocs/app_bloc/app_bloc.dart';
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
  // final _otpPinFieldController = GlobalKey<OtpPinFieldState>();
  final TextEditingController pinController = TextEditingController();
  late InputOtpCubit inputOtpCubit;
  late AuthBloc authBloc;

  @override
  void initState() {
    authBloc = instance<AuthBloc>();
    inputOtpCubit = InputOtpCubit(0);
    super.initState();
  }

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: BlocListener(
        bloc: authBloc,
        listener: (context, AuthState state) {
          state.mapOrNull(
            success: (value) {
              context.read<AppBloc>().user = value.success.data.user;
              context.goNamed(RoutesNames.homeRoute);
            },
            error: (value) {
              showToast(
                  context: context,
                  message: value.message,
                  color: ColorManager.persimmon);
            },
          );
        },
        child: BlocBuilder(
          bloc: inputOtpCubit,
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
              child: Column(
                children: [
                  Image.asset(
                    ImageAssets.logo,
                    width: ScreenUtil.defaultSize.width * 0.6,
                    // color: ColorManager.black,
                  ),
                  SizedBox(height: AppSizeH.s16),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(AppSizeW.s16),
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
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            LottieBuilder.asset(
                              JsonAssets.login_json,
                              height: AppSizeH.s200,
                            ),
                            SizedBox(height: AppSizeH.s16),
                            Text("Enter your OTP please..!",
                                style: Theme.of(context).textTheme.labelMedium),
                            SizedBox(height: AppSizeH.s16),
                            Text(
                              "please enter the code we sent to ${widget.phoneNumber}",
                              style: Theme.of(context).textTheme.titleSmall,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: AppSizeH.s30),
                            OtpInputWidget(
                              phoneNumber: widget.phoneNumber,
                              onSubmit: (p0) {
                                authBloc.add(AuthEvent.login(
                                    input: InputLoginModel(
                                        phoneNumber: widget.phoneNumber,
                                        otp: p0)));
                              },
                            ),
                            // OtpPinField(
                            //     maxLength: 6,
                            //     key: _otpPinFieldController,
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     // fieldWidth: AppSizeW.s48,
                            //     autoFillEnable: false,
                            //     textInputAction: TextInputAction.done,
                            //     onSubmit: (text) {
                            //       context.read<AuthBloc>().add(AuthEvent.login(
                            //           input: InputLoginModel(
                            //               phoneNumber: widget.phoneNumber,
                            //               otp: text)));
                            //     },
                            //     onChange: (text) {
                            //       inputOtpCubit.setOtpCode(text);
                            //     },
                            //     otpPinFieldDecoration:
                            //         OtpPinFieldDecoration.defaultPinBoxDecoration,
                            //     otpPinFieldStyle: OtpPinFieldStyle(
                            //         fieldPadding: 0,
                            //         fieldBorderRadius: AppSizeR.s8,
                            //         fieldBorderWidth: AppSizeW.s1,
                            //         activeFieldBackgroundColor:
                            //             ColorManager.white,
                            //         activeFieldBorderColor: ColorManager.primary,
                            // textStyle: Theme.of(context)
                            //     .textTheme
                            //     .headlineSmall!)),
                            SizedBox(height: AppSizeH.s30),
                            Row(
                              children: [
                                Expanded(
                                    child: BlocBuilder(
                                  bloc: authBloc,
                                  builder: (context, AuthState state) {
                                    return state.maybeMap(
                                      loading: (value) {
                                        return LottieBuilder.asset(
                                          JsonAssets.loading_json,
                                          height: AppSizeH.s100,
                                        );
                                      },
                                      orElse: () {
                                        return ElevatedButton(
                                            onPressed: () {
                                              if (inputOtpCubit
                                                      .otpCode.isNotEmpty ||
                                                  inputOtpCubit
                                                          .otpCode.length ==
                                                      6) {
                                                authBloc.add(AuthEvent.login(
                                                    input: InputLoginModel(
                                                        phoneNumber:
                                                            widget.phoneNumber,
                                                        otp: inputOtpCubit
                                                            .otpCode)));
                                              }
                                            },
                                            child: const Text("Login"));
                                      },
                                    );
                                  },
                                ))
                              ],
                            ),
                            SizedBox(height: AppSizeH.s30)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: AppSizeH.s16),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
