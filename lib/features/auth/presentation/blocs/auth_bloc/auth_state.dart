part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.successSendOtp({required String message}) =
      _SuccessSendOtp;

  const factory AuthState.success(
      {required ResponseModel<LoginModel> success}) = _Success;
  const factory AuthState.error({required String message}) = _Error;
}
