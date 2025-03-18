// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_model.freezed.dart';
part 'branch_model.g.dart';

@freezed
abstract class BranchModel with _$BranchModel {
  factory BranchModel({
    @Default(0) int id,
    @Default("") String name,
    @Default("") String city,
    @Default("") String address,
    @Default(0) double lat,
    @Default(0) double long,
    @Default("") String code,
    @Default("") @JsonKey(name: "phone_number") String phoneNumber,
    @Default("") @JsonKey(name: "manager_name") String managerName,
    @Default("") @JsonKey(name: "manager_email") String managerEmail,
    @JsonKey(name: "deactivation_reason") String? deactivationReason,
  }) = _BranchModel;
  factory BranchModel.fromJson(Map<String, dynamic> json) =>
      _$BranchModelFromJson(json);
}
