// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/bases/models/static_model/static_model.dart';

part 'beneficiary_model.freezed.dart';
part 'beneficiary_model.g.dart';

@freezed
abstract class BeneficiaryModel with _$BeneficiaryModel {
  factory BeneficiaryModel({
    @Default(0) int id,
    @Default("") String title,
    @Default("") @JsonKey(name: "full_name") String fullName,
    @Default("") @JsonKey(name: "account_number") String accountNumber,
    @Default(StaticTextModel()) StaticTextModel relationship,
    @Default("") @JsonKey(name: "relationship_other") String? relationshipOther,
  }) = _BeneficiaryModel;
  factory BeneficiaryModel.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryModelFromJson(json);
}
