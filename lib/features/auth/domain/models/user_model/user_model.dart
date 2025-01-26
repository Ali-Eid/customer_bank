// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/features/auth/domain/models/role_model/role_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @Default(0) int id,
    @Default("") String username,
    @Default("") String type,
    @Default("") @JsonKey(name: "international_code") String internationalCode,
    @Default("") @JsonKey(name: "phone_number") String phoneNumber,
    @Default(0) @JsonKey(name: "branch_id") int branchUd,
    @Default(false) @JsonKey(name: "is_active") bool isActive,
    @Default(0) @JsonKey(name: "customer_id") int customerId,
    @Default(0) @JsonKey(name: "customer_cif") int customerCif,
    @JsonKey(name: "corporate_id") int? corporateId,
    @JsonKey(name: "corporate_cif") int? corporateCif,
    @Default(RoleModel()) @JsonKey(name: "role") RoleModel role,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
