// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_transfer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputTransferModelImpl _$$InputTransferModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputTransferModelImpl(
      fromAccount: json['fromAccountNo'] as String,
      toAccount: json['toAccountNo'] as String,
      amount: json['amount'] as num,
      currencyCode: json['currency_code'] as String,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$InputTransferModelImplToJson(
        _$InputTransferModelImpl instance) =>
    <String, dynamic>{
      'fromAccountNo': instance.fromAccount,
      'toAccountNo': instance.toAccount,
      'amount': instance.amount,
      'currency_code': instance.currencyCode,
      'note': instance.note,
    };
