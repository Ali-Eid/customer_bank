import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/local_auth.dart';

part 'biometric_auth_event.dart';
part 'biometric_auth_state.dart';
part 'biometric_auth_bloc.freezed.dart';

class BiometricAuthBloc extends Bloc<BiometricAuthEvent, BiometricAuthState> {
  final LocalAuthentication localAuthentication;
  bool canAuthenticate = false;
  BiometricAuthBloc({required this.localAuthentication})
      : super(const _Initial()) {
    on<BiometricAuthEvent>((event, emit) async {
      emit(const BiometricAuthState.loading());
      canAuthenticate = await localAuthentication.canCheckBiometrics ||
          await localAuthentication.isDeviceSupported();
      emit(BiometricAuthState.loaded(canAuthenticate: canAuthenticate));
    });
  }
}
