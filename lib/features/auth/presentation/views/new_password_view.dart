import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:fs_bank/features/auth/domain/models/change_password_model/input_set_new_password_model/input_set_new_password_model.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../../../core/app/depndency_injection.dart';
import '../../../../core/constants/assets_manager.dart';
import '../../../../core/constants/string_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/toast_widget.dart';
import '../blocs/auth_bloc/auth_bloc.dart';
import '../blocs/input_forgot_password_cubit/input_forgot_password_cubit.dart';
import '../widgets/auth_text_field_widget.dart';

class NewPasswordView extends StatefulWidget {
  final String referenceId;
  const NewPasswordView({super.key, required this.referenceId});

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late InputForgotPasswordCubit inputForgotPasswordCubit;
  late AuthBloc authBloc;
  @override
  void initState() {
    authBloc = instance<AuthBloc>();
    inputForgotPasswordCubit = InputForgotPasswordCubit(0);
    super.initState();
  }

  @override
  void dispose() {
    authBloc.close();
    inputForgotPasswordCubit.close();
    super.dispose();
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
              setNewPassword: (value) {
                showToast(context: context, message: value.success.message);
                context.pop();
              },
              error: (value) {
                HapticFeedback.heavyImpact();
                showToast(
                    context: context,
                    message: value.message,
                    color: ColorManager.persimmon);
              },
            );
          },
          child: BlocBuilder(
            bloc: inputForgotPasswordCubit,
            builder: (context, state) {
              return Column(
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
                                            AppStrings().changeYourPassword,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall,
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(height: AppSizeH.s12),
                                          Row(
                                            children: [
                                              Expanded(
                                                  child: AuthTextFieldWidget(
                                                controller: passwordController,
                                                obscureText: true,
                                                keyboardType:
                                                    TextInputType.text,
                                                hintText:
                                                    AppStrings().passwordLabel,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return AppStrings()
                                                        .passwordPlaceholder;
                                                  }
                                                  return null;
                                                },
                                              )),
                                            ],
                                          ),
                                          SizedBox(height: AppSizeH.s12),
                                          Row(
                                            children: [
                                              Expanded(
                                                  child: AuthTextFieldWidget(
                                                controller:
                                                    confirmPasswordController,
                                                obscureText: true,
                                                keyboardType:
                                                    TextInputType.text,
                                                hintText: AppStrings()
                                                    .confirmPasswordLabel,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return AppStrings()
                                                        .confirmPasswordPlaceholder;
                                                  }
                                                  if (value !=
                                                      passwordController.text) {
                                                    return AppStrings()
                                                        .passwordNotMatch;
                                                  }
                                                  return null;
                                                },
                                              )),
                                            ],
                                          ),
                                          SizedBox(height: AppSizeH.s12),
                                        ],
                                      ),
                                      SizedBox(height: AppSizeH.s30),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: BlocBuilder(
                                            bloc: authBloc,
                                            builder:
                                                (context, AuthState state) {
                                              return state.maybeMap(
                                                loadingChangePassword: (value) {
                                                  return const LoadingWidget();
                                                },
                                                orElse: () {
                                                  return ElevatedButton(
                                                      onPressed: () async {
                                                        if (_formKey
                                                                .currentState
                                                                ?.validate() ??
                                                            false) {
                                                          FocusScope.of(context)
                                                              .unfocus();
                                                          authBloc.add(AuthEvent.setNewPassword(
                                                              input: InputSetNewPasswordModel(
                                                                  password:
                                                                      passwordController
                                                                          .text,
                                                                  confirmPassword:
                                                                      confirmPasswordController
                                                                          .text,
                                                                  referenceId:
                                                                      widget
                                                                          .referenceId)));
                                                        }
                                                      },
                                                      child: Text(AppStrings()
                                                          .changeYourPassword));
                                                },
                                              );
                                            },
                                          ))
                                        ],
                                      ),
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
              );
            },
          ),
        ),
      ),
    );
  }
}
