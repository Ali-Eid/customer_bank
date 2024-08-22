part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.checkApp() = _CheckApp;
  const factory AppEvent.logout() = _Logout;
}
