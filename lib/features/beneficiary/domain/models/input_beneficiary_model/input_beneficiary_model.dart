// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_beneficiary_model.freezed.dart';
part 'input_beneficiary_model.g.dart';

@freezed
abstract class InputBeneficiaryModel with _$InputBeneficiaryModel {
  factory InputBeneficiaryModel({
    required String title,
    @JsonKey(name: "full_name") required String fullName,
    @JsonKey(name: "account_number") required String accountNumber,
    @JsonKey(name: "relationship_id") required int relationshipId,
    @JsonKey(name: "relationship_other") String? relationshipOther,
  }) = _InputBeneficiaryModel;
  factory InputBeneficiaryModel.fromJson(Map<String, dynamic> json) =>
      _$InputBeneficiaryModelFromJson(json);
}
