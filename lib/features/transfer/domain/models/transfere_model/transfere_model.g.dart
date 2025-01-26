// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfere_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreTransferModelImpl _$$StoreTransferModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreTransferModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      customerId: (json['customer_id'] as num?)?.toInt() ?? 0,
      fromAccountNo: json['fromAccountNo'] as String? ?? "",
      toAccountNo: json['toAccountNo'] as String? ?? "",
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      currencyCode: json['currency_code'] as String? ?? "",
      note: json['note'] as String? ?? "",
      status: json['status'] as String? ?? "",
      completedAt: json['completed_at'] as String? ?? "",
      declinedAt: json['declined_at'] as String? ?? "",
      createdAt: json['created_at'] as String? ?? "",
      refId: json['ref_id'] as String? ?? "",
      withOtp: json['with_otp'] as bool? ?? false,
    );

Map<String, dynamic> _$$StoreTransferModelImplToJson(
        _$StoreTransferModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_id': instance.customerId,
      'fromAccountNo': instance.fromAccountNo,
      'toAccountNo': instance.toAccountNo,
      'amount': instance.amount,
      'currency_code': instance.currencyCode,
      'note': instance.note,
      'status': instance.status,
      'completed_at': instance.completedAt,
      'declined_at': instance.declinedAt,
      'created_at': instance.createdAt,
      'ref_id': instance.refId,
      'with_otp': instance.withOtp,
    };

_$ConfirmTransferModelImpl _$$ConfirmTransferModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmTransferModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      customerId: (json['customer_id'] as num?)?.toInt() ?? 0,
      fromAccountNo: json['fromAccountNo'] as String? ?? "",
      toAccountNo: json['toAccountNo'] as String? ?? "",
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      currencyCode: json['currency_code'] as String? ?? "",
      note: json['note'] as String? ?? "",
      status: json['status'] as String? ?? "",
      completedAt: json['completed_at'] as String? ?? "",
      declinedAt: json['declined_at'] as String? ?? "",
      createdAt: json['created_at'] as String? ?? "",
    );

Map<String, dynamic> _$$ConfirmTransferModelImplToJson(
        _$ConfirmTransferModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_id': instance.customerId,
      'fromAccountNo': instance.fromAccountNo,
      'toAccountNo': instance.toAccountNo,
      'amount': instance.amount,
      'currency_code': instance.currencyCode,
      'note': instance.note,
      'status': instance.status,
      'completed_at': instance.completedAt,
      'declined_at': instance.declinedAt,
      'created_at': instance.createdAt,
    };
