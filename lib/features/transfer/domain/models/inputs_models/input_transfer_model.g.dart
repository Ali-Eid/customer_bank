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
      transferDate: json['transferDate'] as String,
      amount: json['transferAmount'] as num,
      description: json['transferDescription'] as String,
    );

Map<String, dynamic> _$$InputTransferModelImplToJson(
        _$InputTransferModelImpl instance) =>
    <String, dynamic>{
      'fromAccountNo': instance.fromAccount,
      'toAccountNo': instance.toAccount,
      'transferDate': instance.transferDate,
      'transferAmount': instance.amount,
      'transferDescription': instance.description,
    };
