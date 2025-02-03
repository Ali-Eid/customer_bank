part of 'request_card_bloc.dart';

@freezed
class RequestCardState with _$RequestCardState {
  const factory RequestCardState.initial({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default("") String errorMessage,
    @Default("") String successMessage,
    @Default(false) bool success,
  }) = _Initial;
}
