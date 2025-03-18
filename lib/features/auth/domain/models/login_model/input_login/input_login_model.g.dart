// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputLoginModelImpl _$$InputLoginModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputLoginModelImpl(
      username: json['username'] as String,
      password: json['password'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$InputLoginModelImplToJson(
        _$InputLoginModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'type': instance.type,
    };
