// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_transfer_sygs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputTransferSygsModelImpl _$$InputTransferSygsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputTransferSygsModelImpl(
      bankId: (json['bank_id'] as num).toInt(),
      fromAccount: json['fromAccountNo'] as String,
      toAccount: json['toAccountNo'] as String,
      amount: json['amount'] as num,
      reasonId: (json['reason_id'] as num).toInt(),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$InputTransferSygsModelImplToJson(
        _$InputTransferSygsModelImpl instance) =>
    <String, dynamic>{
      'bank_id': instance.bankId,
      'fromAccountNo': instance.fromAccount,
      'toAccountNo': instance.toAccount,
      'amount': instance.amount,
      'reason_id': instance.reasonId,
      'note': instance.note,
    };
