part of 'types_bloc.dart';

@freezed
class TypesState with _$TypesState {
  const factory TypesState.initial({
    @Default(false) bool isLoadingCardTypes,
    @Default(false) bool isLoadingBeneficiaryType,
    @Default(false) bool hasErrorCardTypes,
    @Default(false) bool hasErrorBeneficiaryType,
    @Default("") String messageErrorCardTypes,
    @Default("") String messageErrorBeneficiaryType,
    @Default([]) List<StaticTextModel> cardTypes,
    @Default([]) List<StaticTextModel> beneficiaryType,
  }) = _Initial;
}
