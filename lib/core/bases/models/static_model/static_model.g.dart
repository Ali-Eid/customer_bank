// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'static_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaticModelImpl _$$StaticModelImplFromJson(Map<String, dynamic> json) =>
    _$StaticModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$$StaticModelImplToJson(_$StaticModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$StaticTextModelImpl _$$StaticTextModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StaticTextModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      text: json['text'] as String? ?? "",
    );

Map<String, dynamic> _$$StaticTextModelImplToJson(
        _$StaticTextModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
    };
