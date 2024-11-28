// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountModelImpl _$$AccountModelImplFromJson(Map<String, dynamic> json) =>
    _$AccountModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      label: json['label'] as String? ?? "",
      accountNumber: json['account_number'] as String? ?? "",
      balance: (json['balance'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? "",
      isDefault: json['is_default'] as bool? ?? false,
      accountType: json['account_type'] == null
          ? const StaticModel()
          : StaticModel.fromJson(json['account_type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountModelImplToJson(_$AccountModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'account_number': instance.accountNumber,
      'balance': instance.balance,
      'status': instance.status,
      'is_default': instance.isDefault,
      'account_type': instance.accountType,
    };
