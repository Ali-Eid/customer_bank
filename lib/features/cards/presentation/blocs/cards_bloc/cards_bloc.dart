import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';
import 'package:fs_bank/core/cache/keys_preferences.dart';
import 'package:fs_bank/features/cards/domain/models/card_model/card_model.dart';
import 'package:fs_bank/features/cards/domain/usecases/card_usecases.dart';

import '../../../domain/models/withdrawel_values_model/with_drawel_values_model.dart';

part 'cards_event.dart';
part 'cards_state.dart';
part 'cards_bloc.freezed.dart';

class CardsBloc extends Bloc<CardsEvent, CardsState> {
  final GetCardUsecase getCardUsecase;
  // final GetWithDrawelValues getWithDrawelValues;
  final AppPreferences appPreferences;
  CardsBloc({
    required this.getCardUsecase,
    required this.appPreferences,
    // required this.getWithDrawelValues
  }) : super(const CardsState.initial()) {
    on<CardsEvent>((event, emit) async {
      await event.map(
        getMyCards: (value) async {
          emit(state.copyWith(
              isLoading: true,
              hasError: false,
              cards: appPreferences.getList<CardModel>(
                  KeysPreferences.PREFS_KEY_CARDS, CardModel.fromJson)));
          final failureOrCards = await getCardUsecase.execute();
          await failureOrCards.when(
            (success) async {
              await appPreferences.saveList<CardModel>(
                  KeysPreferences.PREFS_KEY_CARDS,
                  success.data
                      .map(
                        (e) => e.toJson(),
                      )
                      .toList());
              emit(state.copyWith(isLoading: false, cards: success.data));
            },
            (error) {
              emit(state.copyWith(
                  isLoading: false,
                  hasError: true,
                  errorMessage: error.message));
            },
          );
        },
        // getWithDrawalValues: (value) async {
        //   emit(state.copyWith(
        //       isLoadingWithDrawel: true, hasErrorWithDrawel: false));
        //   final failureOrWithDrawel = await getWithDrawelValues.execute();
        //   failureOrWithDrawel.when(
        //     (success) {
        //       emit(state.copyWith(
        //           isLoadingWithDrawel: false, withDrawelValues: success.data));
        //     },
        //     (error) {
        //       emit(state.copyWith(
        //           isLoadingWithDrawel: false,
        //           hasErrorWithDrawel: true,
        //           errorMessageWithDrawel: error.message));
        //     },
        //   );
        // }
      );
    });
  }
}
