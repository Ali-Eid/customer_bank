// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_confirm_transfer_model.freezed.dart';
part 'input_confirm_transfer_model.g.dart';

@freezed
abstract class InputConfirmTransferModel with _$InputConfirmTransferModel {
  factory InputConfirmTransferModel({
    @JsonKey(name: "otp") String? otp,
    @JsonKey(name: "ref_id") required String refId,
  }) = _InputConfirmTransferModel;
  factory InputConfirmTransferModel.fromJson(Map<String, dynamic> json) =>
      _$InputConfirmTransferModelFromJson(json);
}
