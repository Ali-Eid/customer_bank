part of 'beneficiary_bloc.dart';

@freezed
class BeneficiaryEvent with _$BeneficiaryEvent {
  const factory BeneficiaryEvent.getBeneficiaries() = _GetBeneficiaries;
  const factory BeneficiaryEvent.createBeneficiary(
      {required InputBeneficiaryModel beneficiary}) = _CreateBeneficiary;
  const factory BeneficiaryEvent.getRelationships() = _GetRelationships;
  const factory BeneficiaryEvent.updateBeneficiary(
      {required int id,
      required InputBeneficiaryModel beneficiary}) = _UpdateBeneficiary;
  const factory BeneficiaryEvent.deleteBeneficiary({required int id}) =
      _DeleteBeneficiary;
}
