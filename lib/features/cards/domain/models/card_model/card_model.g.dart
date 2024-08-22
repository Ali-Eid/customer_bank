// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardModelImpl _$$CardModelImplFromJson(Map<String, dynamic> json) =>
    _$CardModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      cardNumber: json['card_number'] as String? ?? "",
      beneficiaryName: json['beneficiary_name'] as String? ?? "",
      processedAt: json['processed_at'] as String?,
      readyAt: json['ready_at'] as String? ?? "",
      expiry_At: json['expiry_at'] as String? ?? "",
      receivedAt: json['received_at'] as String? ?? "",
      inactiveAt: json['inactive_at'] as String?,
      createdAt: json['created_at'] as String? ?? "",
      updatedAt: json['updated_at'] as String? ?? "",
      maximumDailyWithdrawal:
          (json['maximum_daily_withdrawal'] as num?)?.toInt() ?? 0,
      type: json['type'] as String? ?? "",
      status: json['status'] as String? ?? "",
      amount: json['amount'] as num? ?? 0,
    );

Map<String, dynamic> _$$CardModelImplToJson(_$CardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'card_number': instance.cardNumber,
      'beneficiary_name': instance.beneficiaryName,
      'processed_at': instance.processedAt,
      'ready_at': instance.readyAt,
      'expiry_at': instance.expiry_At,
      'received_at': instance.receivedAt,
      'inactive_at': instance.inactiveAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'maximum_daily_withdrawal': instance.maximumDailyWithdrawal,
      'type': instance.type,
      'status': instance.status,
      'amount': instance.amount,
    };
