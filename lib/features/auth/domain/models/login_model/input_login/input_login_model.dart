// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_login_model.freezed.dart';
part 'input_login_model.g.dart';

@freezed
abstract class InputLoginModel with _$InputLoginModel {
  const factory InputLoginModel({
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "password") required String password,
    @JsonKey(name: "type") required String type,
  }) = _InputLoginModel;
  factory InputLoginModel.fromJson(Map<String, dynamic> json) =>
      _$InputLoginModelFromJson(json);
}
