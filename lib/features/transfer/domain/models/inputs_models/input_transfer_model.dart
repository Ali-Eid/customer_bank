// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_transfer_model.freezed.dart';
part 'input_transfer_model.g.dart';

@freezed
abstract class InputTransferModel with _$InputTransferModel {
  factory InputTransferModel({
    @JsonKey(name: "fromAccountNo") required String fromAccount,
    @JsonKey(name: "toAccountNo") required String toAccount,
    @JsonKey(name: "transferDate") required String transferDate,
    @JsonKey(name: "transferAmount") required num amount,
    @JsonKey(name: "transferDescription") required String description,
  }) = _InputTransferModel;
  factory InputTransferModel.fromJson(Map<String, dynamic> json) =>
      _$InputTransferModelFromJson(json);
}
