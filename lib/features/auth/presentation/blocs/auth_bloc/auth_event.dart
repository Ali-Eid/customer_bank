part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required InputLoginModel input}) = _Login;
  const factory AuthEvent.changePassword(
      {required InputChangePasswordModel input}) = _ChangePassword;
  const factory AuthEvent.confirmOtpChangePassword(
          {required InputSendOtpChangePasswordModel input}) =
      _ConfirmOtpChangePassword;
  const factory AuthEvent.setNewPassword(
      {required InputSetNewPasswordModel input}) = _SetNewPassword;
  // const factory AuthEvent.sendOtp({required String phoneNumber}) = _SendOtp;
  const factory AuthEvent.biometricAuth() = _BiometricAuth;
}
