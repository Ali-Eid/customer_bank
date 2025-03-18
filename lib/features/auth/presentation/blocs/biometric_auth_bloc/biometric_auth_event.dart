part of 'biometric_auth_bloc.dart';

@freezed
class BiometricAuthEvent with _$BiometricAuthEvent {
  const factory BiometricAuthEvent.bioMetricAuth() = _BioMetricAuth;
}
