part of 'types_bloc.dart';

@freezed
class TypesState with _$TypesState {
  const factory TypesState.loading() = _loading;
  const factory TypesState.loaded({required List<StaticTextModel> types}) =
      _loaded;

  const factory TypesState.error({required String message}) = _error;
}
