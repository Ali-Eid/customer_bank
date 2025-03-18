// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';

part 'transfere_model.freezed.dart';
part 'transfere_model.g.dart';

@freezed
abstract class StoreTransferModel with _$StoreTransferModel {
  factory StoreTransferModel({
    @Default(0) int id,
    @Default(0) @JsonKey(name: "customer_id") int customerId,
    @Default(AccountModel())
    @JsonKey(name: "fromAccount")
    AccountModel fromAccountNo,
    @Default(AccountModel())
    @JsonKey(name: "toAccount")
    AccountModel toAccountNo,
    @Default("") @JsonKey(name: "toAccountNo") String toAccountNo2,
    @Default(0) @JsonKey(name: "amount") int amount,
    @Default("") @JsonKey(name: "currency_code") String currencyCode,
    @Default("") @JsonKey(name: "note") String note,
    @Default("") @JsonKey(name: "status") String status,
    @Default("") @JsonKey(name: "completed_at") String completedAt,
    @Default("") @JsonKey(name: "declined_at") String declinedAt,
    @Default("") @JsonKey(name: "created_at") String createdAt,
    @Default("") @JsonKey(name: "ref_id") String refId,
    @Default(false) @JsonKey(name: "with_otp") bool withOtp,
  }) = _StoreTransferModel;
  factory StoreTransferModel.fromJson(Map<String, dynamic> json) =>
      _$StoreTransferModelFromJson(json);
}

@freezed
abstract class ConfirmTransferModel with _$ConfirmTransferModel {
  factory ConfirmTransferModel({
    @Default(0) int id,
    @Default(0) @JsonKey(name: "customer_id") int customerId,
    @Default("") @JsonKey(name: "fromAccountNo") String fromAccountNo,
    @Default("") @JsonKey(name: "toAccountNo") String toAccountNo,
    @Default(0) @JsonKey(name: "amount") int amount,
    @Default("") @JsonKey(name: "currency_code") String currencyCode,
    @Default("") @JsonKey(name: "note") String note,
    @Default("") @JsonKey(name: "status") String status,
    @Default("") @JsonKey(name: "completed_at") String completedAt,
    @Default("") @JsonKey(name: "declined_at") String declinedAt,
    @Default("") @JsonKey(name: "created_at") String createdAt,
  }) = _ConfirmTransferModel;
  factory ConfirmTransferModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmTransferModelFromJson(json);
}
