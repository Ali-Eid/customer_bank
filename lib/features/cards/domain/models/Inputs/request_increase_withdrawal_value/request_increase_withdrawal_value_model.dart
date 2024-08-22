// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_increase_withdrawal_value_model.freezed.dart';
part 'request_increase_withdrawal_value_model.g.dart';

@freezed
abstract class RequestIncreaseWithdrawalValueModel
    with _$RequestIncreaseWithdrawalValueModel {
  factory RequestIncreaseWithdrawalValueModel({
    @JsonKey(name: "card_id") required int cardId,
    @JsonKey(name: "withdrawal_value_id") required int withdrawalValueId,
  }) = _RequestIncreaseWithdrawalValueModel;
  factory RequestIncreaseWithdrawalValueModel.fromJson(
          Map<String, dynamic> json) =>
      _$RequestIncreaseWithdrawalValueModelFromJson(json);
}
