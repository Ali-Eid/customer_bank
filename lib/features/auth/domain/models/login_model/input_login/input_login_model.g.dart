// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputLoginModelImpl _$$InputLoginModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputLoginModelImpl(
      phoneNumber: json['phone_number'] as String,
      otp: json['otp'] as String,
    );

Map<String, dynamic> _$$InputLoginModelImplToJson(
        _$InputLoginModelImpl instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'otp': instance.otp,
    };
