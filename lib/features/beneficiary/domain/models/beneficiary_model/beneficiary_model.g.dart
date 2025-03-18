// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeneficiaryModelImpl _$$BeneficiaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BeneficiaryModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? "",
      fullName: json['full_name'] as String? ?? "",
      accountNumber: json['account_number'] as String? ?? "",
      relationship: json['relationship'] == null
          ? const StaticTextModel()
          : StaticTextModel.fromJson(
              json['relationship'] as Map<String, dynamic>),
      relationshipOther: json['relationship_other'] as String? ?? "",
    );

Map<String, dynamic> _$$BeneficiaryModelImplToJson(
        _$BeneficiaryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'full_name': instance.fullName,
      'account_number': instance.accountNumber,
      'relationship': instance.relationship,
      'relationship_other': instance.relationshipOther,
    };
