part of 'cards_bloc.dart';

@freezed
class CardsState with _$CardsState {
  const factory CardsState.initial({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingWithDrawel,
    @Default(false) bool hasError,
    @Default(false) bool hasErrorWithDrawel,
    @Default("") String errorMessage,
    @Default("") String errorMessageWithDrawel,
    @Default([]) List<CardModel> cards,
    @Default([]) List<WithDrawelValuesModel> withDrawelValues,
  }) = _Initial;

  // const factory CardsState.loading() = _Loading;
  // const factory CardsState.loaded(
  //     {required ResponseModel<List<CardModel>> cards}) = _Loaded;
  // const factory CardsState.error({required String message}) = _Error;
}
