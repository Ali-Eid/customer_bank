import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fs_bank/core/constants/assets_manager.dart';
import 'package:fs_bank/core/constants/string_manager.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:fs_bank/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:fs_bank/features/auth/presentation/widgets/auth_text_field_widget.dart';
import 'package:fs_bank/features/splash/presentation/blocs/app_bloc/app_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../domain/models/login_model/input_login/input_login_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late AuthBloc authBloc;
  @override
  void initState() {
    authBloc = instance<AuthBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
        ),
        body: BlocListener(
          bloc: authBloc,
          listener: (context, AuthState state) {
            state.mapOrNull(
              success: (value) {
                context.read<AppBloc>().user = value.success.data.user;
                context.goNamed(RoutesNames.homeRoute);
              },
              // successSendOtp: (value) {
              //   // context.goNamed(RoutesNames.otpVerficationRoute,
              //   //     pathParameters: {"phone": phoneController.text},
              //   //     extra: authBloc);
              // },
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ImageAssets.logo,
                width: ScreenUtil.defaultSize.width * 0.6,
                // color: ColorManager.black,
              ),
              SizedBox(height: AppSizeH.s16),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(AppSizeW.s16),
                  child: Container(
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
                          SizedBox(height: AppSizeH.s12),
                          Form(
                            key: _formKey,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppSizeW.s16),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        AppStrings().loginTitle,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: AppSizeH.s12),
                                      AuthTextFieldWidget(
                                        controller: nameController,
                                        keyboardType: TextInputType.text,
                                        hintText: AppStrings().usernameLabel,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return AppStrings()
                                                .usernamePlaceholder;
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(height: AppSizeH.s12),
                                      AuthTextFieldWidget(
                                        controller: passwordController,
                                        obscureText: true,
                                        hintText: AppStrings().passwordLabel,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return AppStrings()
                                                .passwordPlaceholder;
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(height: AppSizeH.s6),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              context.goNamed(RoutesNames
                                                  .forgotPasswordRoute);
                                            },
                                            child: Padding(
                                              padding:
                                                  EdgeInsetsDirectional.only(
                                                      start: AppSizeW.s12),
                                              child: Text(
                                                AppStrings()
                                                    .forgotPasswordTitle,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineLarge!
                                                    .copyWith(
                                                        color: ColorManager
                                                            .primary,
                                                        decorationColor:
                                                            ColorManager
                                                                .primary,
                                                        decoration:
                                                            TextDecoration
                                                                .underline),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: AppSizeH.s14),
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
                                              return SizedBox(
                                                child: ElevatedButton(
                                                    onPressed: () async {
                                                      if (_formKey.currentState
                                                              ?.validate() ??
                                                          false) {
                                                        authBloc.add(AuthEvent.login(
                                                            input: InputLoginModel(
                                                                type:
                                                                    "INDIVIDUAL",
                                                                username:
                                                                    nameController
                                                                        .text,
                                                                password:
                                                                    passwordController
                                                                        .text)));
                                                      }
                                                    },
                                                    child: Text(AppStrings()
                                                        .loginButton)),
                                              );
                                            },
                                          );
                                        },
                                      ))
                                    ],
                                  ),
                                  SizedBox(height: AppSizeH.s14),
                                  Visibility(
                                    visible: !kIsWeb,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          AppStrings().oR,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall,
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: AppSizeH.s14),
                                        Text(
                                          AppStrings().biometricLogin,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall,
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: AppSizeH.s6),
                                        GestureDetector(
                                            onTap: () async {},
                                            child: Image.asset(
                                              IconAssets.fingerAuthIcon,
                                              height: AppSizeW.s35,
                                              width: AppSizeW.s35,
                                              color: ColorManager.grey1,
                                            ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: AppSizeH.s30),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                              text: AppStrings()
                                                  .newCustomerPrompt,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge,
                                              children: [
                                                TextSpan(
                                                  text: AppStrings()
                                                      .digitalAccountInvite,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineMedium!
                                                      .copyWith(
                                                          decorationColor:
                                                              ColorManager
                                                                  .primary,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline),
                                                )
                                              ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: AppSizeH.s14),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                              text: AppStrings()
                                                  .existingAccountQuestion,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge,
                                              children: [
                                                TextSpan(
                                                  text: AppStrings()
                                                      .signupInvitation,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineMedium!
                                                      .copyWith(
                                                          decorationColor:
                                                              ColorManager
                                                                  .primary,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline),
                                                )
                                              ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: AppSizeH.s14),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
