import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_otp_change_password_model.freezed.dart';
part 'confirm_otp_change_password_model.g.dart';

@freezed
abstract class ConfirmOtpChangePasswordModel
    with _$ConfirmOtpChangePasswordModel {
  factory ConfirmOtpChangePasswordModel({
    // ignore: invalid_annotation_target
    @Default("") @JsonKey(name: "reference_id") String referenceId,
  }) = _ConfirmOtpChangePasswordModel;
  factory ConfirmOtpChangePasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmOtpChangePasswordModelFromJson(json);
}
