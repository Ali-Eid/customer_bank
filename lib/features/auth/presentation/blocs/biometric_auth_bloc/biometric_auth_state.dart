part of 'biometric_auth_bloc.dart';

@freezed
class BiometricAuthState with _$BiometricAuthState {
  const factory BiometricAuthState.initial() = _Initial;
  const factory BiometricAuthState.loading() = _Loading;
  const factory BiometricAuthState.loaded({required bool canAuthenticate}) =
      _Loaded;
  const factory BiometricAuthState.error({required String message}) = _Error;
}
