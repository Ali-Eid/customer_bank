// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_beneficiary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputBeneficiaryModelImpl _$$InputBeneficiaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputBeneficiaryModelImpl(
      title: json['title'] as String,
      fullName: json['full_name'] as String,
      accountNumber: json['account_number'] as String,
      relationshipId: (json['relationship_id'] as num).toInt(),
      relationshipOther: json['relationship_other'] as String?,
    );

Map<String, dynamic> _$$InputBeneficiaryModelImplToJson(
        _$InputBeneficiaryModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'full_name': instance.fullName,
      'account_number': instance.accountNumber,
      'relationship_id': instance.relationshipId,
      'relationship_other': instance.relationshipOther,
    };
