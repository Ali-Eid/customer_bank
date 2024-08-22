// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
abstract class CardModel with _$CardModel {
  factory CardModel(
      {@Default(0) int id,
      @Default("") @JsonKey(name: "card_number") String cardNumber,
      @Default("") @JsonKey(name: "beneficiary_name") String beneficiaryName,
      @JsonKey(name: "processed_at") String? processedAt,
      @Default("") @JsonKey(name: "ready_at") String readyAt,
      @Default("") @JsonKey(name: "expiry_at") String expiry_At,
      @Default("") @JsonKey(name: "received_at") String receivedAt,
      @JsonKey(name: "inactive_at") String? inactiveAt,
      @Default("") @JsonKey(name: "created_at") String createdAt,
      @Default("") @JsonKey(name: "updated_at") String updatedAt,
      @Default(0)
      @JsonKey(name: "maximum_daily_withdrawal")
      int maximumDailyWithdrawal,
      @Default("") String type,
      @Default("") String status,
      @Default(0) num amount}) = _CardModel;
  factory CardModel.fromJson(Map<String, dynamic> json) =>
      _$CardModelFromJson(json);
}
