// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginModelImpl _$$LoginModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginModelImpl(
      user: json['user'] == null
          ? const UserModel()
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String? ?? "",
    );

Map<String, dynamic> _$$LoginModelImplToJson(_$LoginModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
