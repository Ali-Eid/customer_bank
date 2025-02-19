import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_terms_deposit_model.freezed.dart';
part 'package_terms_deposit_model.g.dart';

@freezed
abstract class PackageTermsDepositModel with _$PackageTermsDepositModel {
  const factory PackageTermsDepositModel({
    @Default(0) int id,
    @Default(0) int percentage,
    @Default(0) int duration,
    // ignore: invalid_annotation_target
    @Default("") @JsonKey(name: "duration_type") String durationType,
  }) = _PackageTermsDepositModel;
  factory PackageTermsDepositModel.fromJson(Map<String, dynamic> json) =>
      _$PackageTermsDepositModelFromJson(json);
}
