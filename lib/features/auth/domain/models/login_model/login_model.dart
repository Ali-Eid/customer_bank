// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../user_model/user_model.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
abstract class LoginModel with _$LoginModel {
  factory LoginModel({
    @Default(UserModel()) UserModel user,
    @Default("") @JsonKey(name: "access_token") String accessToken,
    @Default("") @JsonKey(name: "refresh_token") String refreshToken,
  }) = _LoginModel;
  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
