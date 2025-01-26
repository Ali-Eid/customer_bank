// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_set_new_password_model.freezed.dart';
part 'input_set_new_password_model.g.dart';

@freezed
abstract class InputSetNewPasswordModel with _$InputSetNewPasswordModel {
  factory InputSetNewPasswordModel({
    @JsonKey(name: "password") required String password,
    @JsonKey(name: "confirm_password") required String confirmPassword,
    @JsonKey(name: "reference_id") required String referenceId,
  }) = _InputSetNewPasswordModel;
  factory InputSetNewPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$InputSetNewPasswordModelFromJson(json);
}

@freezed
abstract class InputSendOtpChangePasswordModel
    with _$InputSendOtpChangePasswordModel {
  factory InputSendOtpChangePasswordModel({
    @JsonKey(name: "international_code") required String internationalCode,
    @JsonKey(name: "phone_number") required String phoneNumber,
    @JsonKey(name: "otp") required String otp,
  }) = _InputSendOtpChangePasswordModel;
  factory InputSendOtpChangePasswordModel.fromJson(Map<String, dynamic> json) =>
      _$InputSendOtpChangePasswordModelFromJson(json);
}
