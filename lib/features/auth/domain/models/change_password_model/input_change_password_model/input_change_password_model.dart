// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_change_password_model.freezed.dart';
part 'input_change_password_model.g.dart';

@freezed
abstract class InputChangePasswordModel with _$InputChangePasswordModel {
  factory InputChangePasswordModel({
    @JsonKey(name: "international_code") required String internationalCode,
    @JsonKey(name: "phone_number") required String phoneNumber,
  }) = _InputChangePasswordModel;
  factory InputChangePasswordModel.fromJson(Map<String, dynamic> json) =>
      _$InputChangePasswordModelFromJson(json);
}
