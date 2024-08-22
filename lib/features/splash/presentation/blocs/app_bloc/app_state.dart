part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.loading() = _Loading;
  const factory AppState.auth() = _Auth;
  const factory AppState.home() = _Home;
  const factory AppState.onBoarding() = _onBoarding;
}
