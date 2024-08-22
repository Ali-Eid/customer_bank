part of 'cards_bloc.dart';

@freezed
class CardsState with _$CardsState {
  const factory CardsState.loading() = _Loading;
  const factory CardsState.loaded(
      {required ResponseModel<List<CardModel>> cards}) = _Loaded;
  const factory CardsState.error({required String message}) = _Error;
}
