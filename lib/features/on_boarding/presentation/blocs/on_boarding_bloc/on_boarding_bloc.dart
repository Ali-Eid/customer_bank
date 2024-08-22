import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';
import 'package:fs_bank/core/constants/assets_manager.dart';

import '../../../../../core/app/depndency_injection.dart';
import '../../../domain/models/on_boarding_model/on_boarding_model.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';
part 'on_boarding_bloc.freezed.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  List<OnBoardingModel> onBoarding = [
    OnBoardingModel(
        title: "Easy, Fast \nand Trusted",
        subTitle:
            "Fast money transfer and guaranteed safe transactions with others",
        image: ImageAssets.onlineOnBoarding),
    OnBoardingModel(
        title: "Saving your\nMoney",
        subTitle:
            "Track the progress of your savings and start a habit of saving with us",
        image: ImageAssets.moneyOnBoarding),
    OnBoardingModel(
        title: "Free \nTransactions",
        subTitle:
            "Provides a quality of the financial system with free money transactions without any fees",
        image: ImageAssets.loanOnBoarding)
  ];
  int selectIndex = 0;
  OnBoardingBloc() : super(const _Initial()) {
    on<OnBoardingEvent>((event, emit) async {
      event.map(
        getOnBoarding: (value) {},
        changeIndex: (value) {
          emit(const OnBoardingState.loading());
          selectIndex = value.index;
          emit(const OnBoardingState.loaded());
        },
        setShowOnBoarding: (value) async {
          emit(const OnBoardingState.loading());
          await instance<AppPreferences>().setShowOnBoarding(true);
          emit(const OnBoardingState.loaded());
        },
      );
    });
  }
}
