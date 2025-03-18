part of 'beneficiary_bloc.dart';

@freezed
class BeneficiaryState with _$BeneficiaryState {
  const factory BeneficiaryState.initial({
    @Default(false) bool isLoadingGetBeneficiaries,
    @Default(false) bool isLoadingCreateBeneficiary,
    @Default(false) bool isLoadingGetRelationships,
    @Default(false) bool successCreateBeneficiary,
    @Default(false) bool successDeleteBeneficiary,
    @Default([]) List<BeneficiaryModel> beneficiaries,
    @Default([]) List<StaticTextModel> relationships,
    @Default(false) bool hasError,
    @Default("") String messageError,
    @Default("") String messageSuccess,
  }) = _Initial;
}
