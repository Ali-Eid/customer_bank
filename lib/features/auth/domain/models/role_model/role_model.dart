// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/bases/models/static_model/static_model.dart';

part 'role_model.freezed.dart';
part 'role_model.g.dart';

@freezed
abstract class RoleModel with _$RoleModel {
  const factory RoleModel({
    @Default(0) int id,
    @Default("") String key,
    @Default("") String name,
    @Default("") @JsonKey(name: "guard_name") String guardName,
    @Default("") @JsonKey(name: "created_at") String createdAt,
    @Default("") @JsonKey(name: "updated_at") String updatedAt,
    @Default([]) List<KeyValueModel> permissions,
  }) = _RoleModel;
  factory RoleModel.fromJson(Map<String, dynamic> json) =>
      _$RoleModelFromJson(json);
}
