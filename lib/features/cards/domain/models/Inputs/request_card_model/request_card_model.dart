// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_card_model.freezed.dart';
part 'request_card_model.g.dart';

@freezed
abstract class RequestCardModel with _$RequestCardModel {
  factory RequestCardModel({
    @JsonKey(name: "account_id") required int accountId,
    @JsonKey(name: "beneficiary_name") required String beneficiaryName,
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "withdrawal_value_id") required int withdrawalValueId,
  }) = _RequestCardModel;
  factory RequestCardModel.fromJson(Map<String, dynamic> json) =>
      _$RequestCardModelFromJson(json);
}
