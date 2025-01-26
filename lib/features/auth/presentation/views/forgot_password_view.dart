import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fs_bank/core/app/depndency_injection.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:fs_bank/core/widgets/toast_widget.dart';
import 'package:fs_bank/features/auth/domain/models/change_password_model/input_change_password_model/input_change_password_model.dart';
import 'package:fs_bank/features/auth/domain/models/change_password_model/input_set_new_password_model/input_set_new_password_model.dart';
import 'package:fs_bank/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../../../core/constants/assets_manager.dart';
import '../../../../core/constants/string_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/themes/theme_manager.dart';
import '../../../../core/widgets/bottom_sheet_base_widget.dart';
import '../../../cards/presentation/views/mycards_view.dart';
import '../blocs/input_forgot_password_cubit/input_forgot_password_cubit.dart';
import '../blocs/input_otp_cubit/input_otp_cubit.dart';
import '../widgets/auth_text_field_widget.dart';
import '../widgets/confirm_otp_change_password_widget.dart';
import '../widgets/otp_input_widget.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final phoneController = TextEditingController();
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
              confirmOtpChangePassword: (value) {
                context.pop();
                context.goNamed(RoutesNames.changePasswordRoute,
                    extra: value.success.data.referenceId);
              },
              changePassword: (value) {
                showMyBottomSheet(
                    isDismissible: false,
                    enableDrag: false,
                    context,
                    ConfirmOtpChangePasswordWidget(
                      phoneNumber: phoneController.text,
                      internationalCode:
                          inputForgotPasswordCubit.countryCode ?? "",
                      authBloc: authBloc,
                    ));
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
                                            AppStrings().forgotPassword,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall,
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(height: AppSizeH.s12),
                                          FormField<String>(
                                            builder: (state) => Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                            width: AppSizeW.s1,
                                                            color: ColorManager
                                                                .nonOpaque,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      AppSizeR
                                                                          .s4)),
                                                      child: CountryCodePicker(
                                                        onInit: (value) {
                                                          inputForgotPasswordCubit
                                                              .setCountryCode(
                                                                  value ??
                                                                      CountryCode());
                                                        },
                                                        initialSelection: 'SY',
                                                        favorite: const [
                                                          '+963',
                                                          'SY'
                                                        ],
                                                        searchPadding:
                                                            EdgeInsets.all(
                                                                AppSizeH.s12),
                                                        searchStyle:
                                                            Theme.of(context)
                                                                .textTheme
                                                                .headlineLarge,
                                                        dialogTextStyle:
                                                            Theme.of(context)
                                                                .textTheme
                                                                .headlineLarge,
                                                        searchDecoration:
                                                            InputDecoration(
                                                          border:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        AppSizeR
                                                                            .s4),
                                                            borderSide:
                                                                BorderSide(
                                                              color: ColorManager
                                                                  .nonOpaque,
                                                              strokeAlign:
                                                                  AppSizeW.s1,
                                                            ),
                                                          ),
                                                        ),
                                                        padding:
                                                            EdgeInsets.zero,
                                                        flagWidth: AppSizeW.s22,
                                                        textStyle:
                                                            Theme.of(context)
                                                                .textTheme
                                                                .headlineLarge,
                                                        onChanged: (value) {
                                                          inputForgotPasswordCubit
                                                              .setCountryCode(
                                                                  value);
                                                        },
                                                      ),
                                                    ),
                                                    SizedBox(
                                                        width: AppSizeW.s4),
                                                    Expanded(
                                                        child:
                                                            AuthTextFieldWidget(
                                                      onChanged: (value) {
                                                        state.didChange(value);
                                                      },
                                                      controller:
                                                          phoneController,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      hintText: AppStrings()
                                                          .phoneLabel,
                                                    )),
                                                  ],
                                                ),
                                                SizedBox(height: AppSizeH.s4),
                                                state.hasError
                                                    ? Text(
                                                        state.errorText ?? "",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                FontConstants
                                                                    .fontFamilyPTSans,
                                                            fontSize:
                                                                AppSizeSp.s12,
                                                            color: ColorManager
                                                                .persimmon))
                                                    : const SizedBox()
                                              ],
                                            ),
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return AppStrings()
                                                    .phonePlaceholder;
                                              }
                                              return null;
                                            },
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
                                                loading: (value) {
                                                  return LottieBuilder.asset(
                                                    JsonAssets.loading_json,
                                                    height: AppSizeH.s100,
                                                  );
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
                                                          authBloc.add(AuthEvent.changePassword(
                                                              input: InputChangePasswordModel(
                                                                  internationalCode:
                                                                      inputForgotPasswordCubit
                                                                              .countryCode ??
                                                                          "",
                                                                  phoneNumber:
                                                                      phoneController
                                                                          .text)));
                                                        }
                                                      },
                                                      child: Text(AppStrings()
                                                          .forgotPassword));
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
