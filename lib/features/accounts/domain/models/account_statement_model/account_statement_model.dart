// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_statement_model.freezed.dart';
part 'account_statement_model.g.dart';

@freezed
abstract class AccountStatementModel with _$AccountStatementModel {
 const factory AccountStatementModel({
    @Default([]) List<TransactionModel> transactions,
    @Default("") @JsonKey(name: "start_date") String startDate,
    @Default("") @JsonKey(name: "end_date") String endDate,
  }) = _AccountStatementModel;
  factory AccountStatementModel.fromJson(Map<String, dynamic> json) =>
      _$AccountStatementModelFromJson(json);
}

@freezed
abstract class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    @Default(0) int id,
    @Default("") String type,
    @Default("") String date,
    @Default(0) num amount,
    @Default(0) num runningBalance,
  }) = _TransactionModel;
  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
