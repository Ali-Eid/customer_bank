part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loadingChangePassword() = _LoadingChangePassword;
  // const factory AuthState.successSendOtp({required String message}) =
  //     _SuccessSendOtp;
  const factory AuthState.success(
      {required ResponseModel<LoginModel> success}) = _Success;
  const factory AuthState.changePassword({required ResponseModel success}) =
      _ChangePasswordState;
  const factory AuthState.confirmOtpChangePassword(
          {required ResponseModel<ConfirmOtpChangePasswordModel> success}) =
      _ConfirmOtpChangePasswordState;
  const factory AuthState.setNewPassword({required ResponseModel success}) =
      _SetNewPasswordState;
  const factory AuthState.error({required String message}) = _Error;
}
