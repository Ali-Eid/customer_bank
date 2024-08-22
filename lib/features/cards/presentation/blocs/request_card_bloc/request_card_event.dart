part of 'request_card_bloc.dart';

@freezed
class RequestCardEvent with _$RequestCardEvent {
  const factory RequestCardEvent.newCard({required RequestCardModel request}) =
      _NewCard;
  const factory RequestCardEvent.inActiveCard(
      {required RequestInactiveCardModel request}) = _InActiveCard;
  const factory RequestCardEvent.editWithdrawalCard(
          {required RequestIncreaseWithdrawalValueModel request}) =
      _EditWithdrawalCard;
}
