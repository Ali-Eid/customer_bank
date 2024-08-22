import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_login_model.freezed.dart';
part 'input_login_model.g.dart';

@freezed
abstract class InputLoginModel with _$InputLoginModel {
  const factory InputLoginModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: "phone_number") required String phoneNumber,
    required String otp,
  }) = _InputLoginModel;
  factory InputLoginModel.fromJson(Map<String, dynamic> json) =>
      _$InputLoginModelFromJson(json);
}
