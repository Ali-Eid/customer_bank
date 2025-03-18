// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_transfer_sygs_model.freezed.dart';
part 'input_transfer_sygs_model.g.dart';

@freezed
abstract class InputTransferSygsModel with _$InputTransferSygsModel {
  factory InputTransferSygsModel({
    @JsonKey(name: "bank_id") required int bankId,
    @JsonKey(name: "fromAccountNo") required String fromAccount,
    @JsonKey(name: "toAccountNo") required String toAccount,
    @JsonKey(name: "amount") required num amount,
    // @JsonKey(name: "currency_code") required String currencyCode,
    @JsonKey(name: "reason_id") required int reasonId,
    @JsonKey(name: "note") String? note,
  }) = _InputTransferSygsModel;
  factory InputTransferSygsModel.fromJson(Map<String, dynamic> json) =>
      _$InputTransferSygsModelFromJson(json);
}
