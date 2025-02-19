// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/features/terms_deposit/domain/models/package_terms_deposit_model/package_terms_deposit_model.dart';

part 'terms_deposit_model.freezed.dart';
part 'terms_deposit_model.g.dart';

@freezed
abstract class TermsDepositModel with _$TermsDepositModel {
  factory TermsDepositModel(
    @JsonKey(name: "terms_deposit") TermsDepositDataModel termsDeposit,
  ) = _TermsDepositModel;
  factory TermsDepositModel.fromJson(Map<String, dynamic> json) =>
      _$TermsDepositModelFromJson(json);
}

@freezed
abstract class TermsDepositDataModel with _$TermsDepositDataModel {
  const factory TermsDepositDataModel({
    @Default(0) int id,
    @Default("") String status,
    @Default(PackageTermsDepositModel()) PackageTermsDepositModel package,
    @Default(0) int amount,
    @Default("") String note,
  }) = _TermsDepositDataModel;
  factory TermsDepositDataModel.fromJson(Map<String, dynamic> json) =>
      _$TermsDepositDataModelFromJson(json);
}
