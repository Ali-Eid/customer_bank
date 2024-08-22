// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_inactive_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestInactiveCardModelImpl _$$RequestInactiveCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestInactiveCardModelImpl(
      cardId: (json['card_id'] as num).toInt(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$RequestInactiveCardModelImplToJson(
        _$RequestInactiveCardModelImpl instance) =>
    <String, dynamic>{
      'card_id': instance.cardId,
      'message': instance.message,
    };
