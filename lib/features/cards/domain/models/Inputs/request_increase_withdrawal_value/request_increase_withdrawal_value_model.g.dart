// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_increase_withdrawal_value_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestIncreaseWithdrawalValueModelImpl
    _$$RequestIncreaseWithdrawalValueModelImplFromJson(
            Map<String, dynamic> json) =>
        _$RequestIncreaseWithdrawalValueModelImpl(
          cardId: (json['card_id'] as num).toInt(),
          withdrawalValueId: (json['withdrawal_value_id'] as num).toInt(),
        );

Map<String, dynamic> _$$RequestIncreaseWithdrawalValueModelImplToJson(
        _$RequestIncreaseWithdrawalValueModelImpl instance) =>
    <String, dynamic>{
      'card_id': instance.cardId,
      'withdrawal_value_id': instance.withdrawalValueId,
    };
