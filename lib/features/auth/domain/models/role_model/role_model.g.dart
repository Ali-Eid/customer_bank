// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoleModelImpl _$$RoleModelImplFromJson(Map<String, dynamic> json) =>
    _$RoleModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      key: json['key'] as String? ?? "",
      name: json['name'] as String? ?? "",
      guardName: json['guard_name'] as String? ?? "",
      createdAt: json['created_at'] as String? ?? "",
      updatedAt: json['updated_at'] as String? ?? "",
      permissions: (json['permissions'] as List<dynamic>?)
              ?.map((e) => KeyValueModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RoleModelImplToJson(_$RoleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
      'guard_name': instance.guardName,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'permissions': instance.permissions,
    };
