part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required InputLoginModel input}) = _Login;
  const factory AuthEvent.sendOtp({required String phoneNumber}) = _SendOtp;
}
