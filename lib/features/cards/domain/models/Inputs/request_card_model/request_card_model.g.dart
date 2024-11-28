// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestCardModelImpl _$$RequestCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestCardModelImpl(
      accountId: (json['account_id'] as num).toInt(),
      beneficiaryName: json['beneficiary_name'] as String,
      type: (json['type_id'] as num).toInt(),
      beneficiaryType: (json['beneficiary_type_id'] as num).toInt(),
      withdrawalValueId: (json['withdrawal_value_id'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestCardModelImplToJson(
        _$RequestCardModelImpl instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'beneficiary_name': instance.beneficiaryName,
      'type_id': instance.type,
      'beneficiary_type_id': instance.beneficiaryType,
      'withdrawal_value_id': instance.withdrawalValueId,
    };
