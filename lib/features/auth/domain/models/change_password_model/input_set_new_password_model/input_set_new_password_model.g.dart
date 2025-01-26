// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_set_new_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputSetNewPasswordModelImpl _$$InputSetNewPasswordModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputSetNewPasswordModelImpl(
      password: json['password'] as String,
      confirmPassword: json['confirm_password'] as String,
      referenceId: json['reference_id'] as String,
    );

Map<String, dynamic> _$$InputSetNewPasswordModelImplToJson(
        _$InputSetNewPasswordModelImpl instance) =>
    <String, dynamic>{
      'password': instance.password,
      'confirm_password': instance.confirmPassword,
      'reference_id': instance.referenceId,
    };

_$InputSendOtpChangePasswordModelImpl
    _$$InputSendOtpChangePasswordModelImplFromJson(Map<String, dynamic> json) =>
        _$InputSendOtpChangePasswordModelImpl(
          internationalCode: json['international_code'] as String,
          phoneNumber: json['phone_number'] as String,
          otp: json['otp'] as String,
        );

Map<String, dynamic> _$$InputSendOtpChangePasswordModelImplToJson(
        _$InputSendOtpChangePasswordModelImpl instance) =>
    <String, dynamic>{
      'international_code': instance.internationalCode,
      'phone_number': instance.phoneNumber,
      'otp': instance.otp,
    };
