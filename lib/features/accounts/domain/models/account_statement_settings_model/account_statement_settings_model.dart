// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
part 'account_statement_settings_model.freezed.dart';
part 'account_statement_settings_model.g.dart';

@freezed
abstract class AccountStatementSettingsModel
    with _$AccountStatementSettingsModel {
  const factory AccountStatementSettingsModel({
    @Default(0) @JsonKey(name: "view_max_period") int viewMaxPeriod,
    @Default(0) @JsonKey(name: "export_max_period") int exportMaxPeriod,
  }) = _AccountStatementSettingsModel;
  factory AccountStatementSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$AccountStatementSettingsModelFromJson(json);
}
