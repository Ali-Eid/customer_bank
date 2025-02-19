// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_chequebook_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Page_ChequebookModelImpl _$$Page_ChequebookModelImplFromJson(
        Map<String, dynamic> json) =>
    _$Page_ChequebookModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      value: (json['value'] as num?)?.toInt() ?? 0,
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$Page_ChequebookModelImplToJson(
        _$Page_ChequebookModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'description': instance.description,
    };
