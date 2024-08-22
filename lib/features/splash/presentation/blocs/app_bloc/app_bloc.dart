import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';
import 'package:fs_bank/features/auth/domain/models/user_model/user_model.dart';
import 'package:fs_bank/features/auth/domain/usecases/auth_usecases.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final AppPreferences appPreferences;
  final LogoutUsecase logoutUsecase;
  UserModel? user;
  AppBloc({required this.appPreferences, required this.logoutUsecase})
      : super(const _Initial()) {
    on<AppEvent>((event, emit) async {
      await event.map(
        checkApp: (value) async {
          emit(const AppState.loading());
          if (appPreferences.isLoggedIn()) {
            user = appPreferences.getUserInfo();
            emit(const AppState.home());
          } else {
            if (appPreferences.isShowOnBoarding()) {
              emit(const AppState.auth());
            } else {
              emit(const AppState.onBoarding());
            }
          }
        },
        logout: (value) async {
          emit(const AppState.loading());
          final failureOrSuccess = await logoutUsecase.execute();
          await failureOrSuccess.when(
            (success) async {
              await appPreferences.setUserToken("");
              emit(const AppState.auth());
            },
            (error) {
              emit(const AppState.home());
            },
          );
        },
      );
    });
  }
}
