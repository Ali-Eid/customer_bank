part of 'cards_bloc.dart';

@freezed
class CardsEvent with _$CardsEvent {
  const factory CardsEvent.getMyCards() = _GetMyCards;
  // const factory CardsEvent.getWithDrawalValues() = _GetWithDrawalValues;
}
