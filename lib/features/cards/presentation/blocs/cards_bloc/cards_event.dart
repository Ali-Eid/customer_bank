part of 'cards_bloc.dart';

@freezed
class CardsEvent with _$CardsEvent {
  const factory CardsEvent.getMyCards({@Default(true) bool isLoading}) =
      _GetMyCards;
}
