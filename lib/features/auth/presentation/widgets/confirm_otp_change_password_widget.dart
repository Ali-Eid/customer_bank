import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constants/assets_manager.dart';
import '../../../../core/constants/string_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../domain/models/change_password_model/input_set_new_password_model/input_set_new_password_model.dart';
import '../blocs/auth_bloc/auth_bloc.dart';
import '../blocs/input_otp_cubit/input_otp_cubit.dart';
import 'otp_input_widget.dart';

class ConfirmOtpChangePasswordWidget extends StatefulWidget {
  final AuthBloc authBloc;
  final String internationalCode;
  final String phoneNumber;
  const ConfirmOtpChangePasswordWidget({
    super.key,
    required this.authBloc,
    required this.internationalCode,
    required this.phoneNumber,
  });

  @override
  State<ConfirmOtpChangePasswordWidget> createState() =>
      _ConfirmOtpChangePasswordWidgetState();
}

class _ConfirmOtpChangePasswordWidgetState
    extends State<ConfirmOtpChangePasswordWidget> {
  late InputOtpCubit inputOtpCubit;
  @override
  void initState() {
    inputOtpCubit = InputOtpCubit(0);
    super.initState();
  }

  @override
  void dispose() {
    inputOtpCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: inputOtpCubit,
      builder: (context, state) {
        return PopScope(
          canPop: false,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppSizeW.s16, vertical: AppSizeH.s24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  ImageAssets.logo,
                  width: ScreenUtil.defaultSize.width * 0.4,
                  // color: ColorManager.black,
                ),
                SizedBox(height: AppSizeH.s16),
                Container(
                  padding: EdgeInsets.all(AppSizeW.s16),
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    boxShadow: [
                      BoxShadow(
                        color: ColorManager.grey5,
                        blurRadius: AppSizeR.s5,
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
                        Text(AppStrings().enterOtp,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.w700)),
                        SizedBox(height: AppSizeH.s16),
                        OtpInputWidget(
                          inputOtpCubit: inputOtpCubit,
                          onSubmit: (value) {
                            widget.authBloc.add(
                                AuthEvent.confirmOtpChangePassword(
                                    input: InputSendOtpChangePasswordModel(
                                        internationalCode:
                                            widget.internationalCode,
                                        phoneNumber: widget.phoneNumber,
                                        otp: value)));
                          },
                        ),
                        SizedBox(height: AppSizeH.s30),
                        BlocBuilder(
                          bloc: widget.authBloc,
                          builder: (context, AuthState state) {
                            return state.maybeMap(
                              loadingChangePassword: (value) {
                                return LoadingWidget(height: AppSizeH.s100);
                              },
                              orElse: () {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                              onPressed: () {
                                                if (inputOtpCubit
                                                        .otpCode.isNotEmpty ||
                                                    inputOtpCubit
                                                            .otpCode.length ==
                                                        6) {
                                                  widget.authBloc.add(AuthEvent
                                                      .confirmOtpChangePassword(
                                                          input: InputSendOtpChangePasswordModel(
                                                              internationalCode:
                                                                  widget
                                                                      .internationalCode,
                                                              phoneNumber: widget
                                                                  .phoneNumber,
                                                              otp: inputOtpCubit
                                                                  .otpCode)));
                                                }
                                              },
                                              child:
                                                  Text(AppStrings().confirm)),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                  elevation:
                                                      WidgetStateProperty.all(
                                                          AppSizeW.s8),
                                                  backgroundColor:
                                                      WidgetStateProperty.all(
                                                          ColorManager.white)),
                                              onPressed: () {
                                                context.pop();
                                              },
                                              child: Text(
                                                AppStrings().cancel,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium,
                                              )),
                                        ),
                                      ],
                                    )
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: AppSizeH.s16),
              ],
            ),
          ),
        );
      },
    );
  }
}
