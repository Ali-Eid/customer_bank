import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';
import 'package:fs_bank/features/auth/domain/models/login_model/input_login/input_login_model.dart';
import 'package:local_auth/local_auth.dart';
import '../../../../../core/bases/models/response_model/response_model.dart';
import '../../../../../core/constants/string_manager.dart';
import '../../../domain/models/change_password_model/confirm_otp_change_password_model/confirm_otp_change_password_model.dart';
import '../../../domain/models/change_password_model/input_change_password_model/input_change_password_model.dart';
import '../../../domain/models/change_password_model/input_set_new_password_model/input_set_new_password_model.dart';
import '../../../domain/models/login_model/login_model.dart';
import '../../../domain/usecases/auth_usecases.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AppPreferences appPreferences;
  final LoginUsecase loginUsecase;
  // final SendOtpUsecase sendOtpUsecase;
  final ForgotPasswordUsecase forgotPasswordUsecase;
  final ConfirmOtpChangePasswordUsecase confirmOtpChangePasswordUsecase;
  final SetNewPasswordUsecase setNewPasswordUsecase;
  final LocalAuthentication localAuthentication;

  AuthBloc({
    required this.loginUsecase,
    // required this.sendOtpUsecase,
    required this.appPreferences,
    required this.localAuthentication,
    required this.forgotPasswordUsecase,
    required this.confirmOtpChangePasswordUsecase,
    required this.setNewPasswordUsecase,
  }) : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        login: (value) async {
          emit(const AuthState.loading());
          final failureOrSuccess = await loginUsecase.execute(value.input);
          await failureOrSuccess.when(
            (success) async {
              await appPreferences.setUserToken(success.data.accessToken);
              await appPreferences.setUserInfo(success.data.user);
              await appPreferences.setEmailSecure(success.data.user.username);
              await appPreferences.setPasswordSecure(value.input.password);
              emit(AuthState.success(success: success));
            },
            (error) {
              emit(AuthState.error(message: error.message));
            },
          );
        },
        // sendOtp: (value) async {
        //   emit(const AuthState.loading());
        //   final failureOrSuccess =
        //       await sendOtpUsecase.execute(value.phoneNumber);
        //   failureOrSuccess.when(
        //     (success) {
        //       emit(AuthState.successSendOtp(message: success.message));
        //     },
        //     (error) {
        //       emit(AuthState.error(message: error.message));
        //     },
        //   );
        // },
        biometricAuth: (_BiometricAuth value) async {
          try {
            if (await localAuthentication.authenticate(
                localizedReason: AppStrings().biometricAuthPrompt,
                options: const AuthenticationOptions(
                    useErrorDialogs: false, biometricOnly: true))) {}
          } on PlatformException catch (e) {
            emit(AuthState.error(
                message: e.message ?? AppStrings().apiFailureMessage));
          }
        },
        changePassword: (value) async {
          emit(const AuthState.loading());
          final failureOrSuccess =
              await forgotPasswordUsecase.execute(value.input);
          failureOrSuccess.when(
            (success) async {
              emit(AuthState.changePassword(success: success));
            },
            (error) {
              emit(AuthState.error(message: error.message));
            },
          );
        },
        confirmOtpChangePassword: (value) async {
          emit(const AuthState.loadingChangePassword());
          final failureOrSuccess =
              await confirmOtpChangePasswordUsecase.execute(value.input);
          failureOrSuccess.when(
            (success) async {
              emit(AuthState.confirmOtpChangePassword(success: success));
            },
            (error) {
              emit(AuthState.error(message: error.message));
            },
          );
        },
        setNewPassword: (value) async {
          emit(const AuthState.loadingChangePassword());
          final failureOrSuccess =
              await setNewPasswordUsecase.execute(value.input);
          failureOrSuccess.when(
            (success) async {
              emit(AuthState.setNewPassword(success: success));
            },
            (error) {
              emit(AuthState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
