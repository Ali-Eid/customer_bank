import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';
import 'package:fs_bank/features/auth/domain/models/login_model/input_login/input_login_model.dart';

import '../../../../../core/bases/models/response_model/response_model.dart';
import '../../../domain/models/login_model/login_model.dart';
import '../../../domain/usecases/auth_usecases.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AppPreferences appPreferences;
  final LoginUsecase loginUsecase;
  final SendOtpUsecase sendOtpUsecase;
  AuthBloc(
      {required this.loginUsecase,
      required this.sendOtpUsecase,
      required this.appPreferences})
      : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        login: (value) async {
          emit(const AuthState.loading());
          final failureOrSuccess = await loginUsecase.execute(value.input);
          await failureOrSuccess.when(
            (success) async {
              await appPreferences.setUserToken(success.data.token);
              await appPreferences.setUserInfo(success.data.user);
              emit(AuthState.success(success: success));
            },
            (error) {
              emit(AuthState.error(message: error.message));
            },
          );
        },
        sendOtp: (value) async {
          emit(const AuthState.loading());
          final failureOrSuccess =
              await sendOtpUsecase.execute(value.phoneNumber);
          failureOrSuccess.when(
            (success) {
              emit(AuthState.successSendOtp(message: success.message));
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
