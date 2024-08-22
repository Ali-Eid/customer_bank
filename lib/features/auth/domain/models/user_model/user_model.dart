import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @Default(0) int id,
    @Default("") String name,
    @Default("") @JsonKey(name: "phone_number") String phoneNumber,
    @Default(0) @JsonKey(name: "customer_id") int customerId,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
