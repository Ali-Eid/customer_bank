// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chequebook_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChequebookModelImpl _$$ChequebookModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChequebookModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      serialNumber: json['serial_number'] as String? ?? "",
      account: json['account'] == null
          ? const AccountModel()
          : AccountModel.fromJson(json['account'] as Map<String, dynamic>),
      page: json['page'] == null
          ? const PageChequebookModel()
          : PageChequebookModel.fromJson(json['page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChequebookModelImplToJson(
        _$ChequebookModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serial_number': instance.serialNumber,
      'account': instance.account,
      'page': instance.page,
    };
