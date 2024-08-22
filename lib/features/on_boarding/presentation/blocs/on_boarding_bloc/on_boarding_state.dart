part of 'on_boarding_bloc.dart';

@freezed
class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState.initial() = _Initial;
  const factory OnBoardingState.loading() = _Loading;
  const factory OnBoardingState.loaded() = _Loaded;
  const factory OnBoardingState.error() = _Error;
}
