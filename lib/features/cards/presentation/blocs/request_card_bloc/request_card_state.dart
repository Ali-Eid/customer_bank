part of 'request_card_bloc.dart';

@freezed
class RequestCardState with _$RequestCardState {
  const factory RequestCardState.initial() = _Initial;
  const factory RequestCardState.loading() = _Loading;
  const factory RequestCardState.success({required String message}) = _Success;
  const factory RequestCardState.error({required String message}) = _Error;
}
