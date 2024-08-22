// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
abstract class AccountModel with _$AccountModel {
  factory AccountModel({
    @Default(0) int id,
    @Default("") String label,
    @Default("") @JsonKey(name: "account_number") String accountNumber,
    @Default(0) int balance,
    @Default("") String status,
    @Default(false) @JsonKey(name: "is_default") bool isDefault,
    @Default("") @JsonKey(name: "account_type") String accountType,
  }) = _AccountModel;
  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);
}
