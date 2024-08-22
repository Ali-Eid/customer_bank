part of 'on_boarding_bloc.dart';

@freezed
class OnBoardingEvent with _$OnBoardingEvent {
  const factory OnBoardingEvent.getOnBoarding() = _GetOnBoarding;
  const factory OnBoardingEvent.changeIndex({required int index}) =
      _ChangedIndex;
  const factory OnBoardingEvent.setShowOnBoarding() = _SetShowOnBoarding;
}
