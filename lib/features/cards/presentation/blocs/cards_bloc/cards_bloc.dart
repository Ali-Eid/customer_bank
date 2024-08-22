import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/cards/domain/models/card_model/card_model.dart';
import 'package:fs_bank/features/cards/domain/usecases/card_usecases.dart';

part 'cards_event.dart';
part 'cards_state.dart';
part 'cards_bloc.freezed.dart';

class CardsBloc extends Bloc<CardsEvent, CardsState> {
  final GetCardUsecase getCardUsecase;
  List<CardModel> cards = [];
  CardsBloc({required this.getCardUsecase})
      : super(const CardsState.loading()) {
    on<CardsEvent>((event, emit) async {
      await event.map(
        getMyCards: (value) async {
          if (value.isLoading) {
            cards.clear();
            emit(const CardsState.loading());
          }
          final failureOrCards = await getCardUsecase.execute();
          failureOrCards.when(
            (success) {
              if (!value.isLoading) {
                cards.clear();
              }
              cards.addAll(success.data);
              emit(CardsState.loaded(cards: success));
            },
            (error) {
              emit(CardsState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
