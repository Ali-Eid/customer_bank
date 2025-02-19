import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_request_terms_deposit_model.freezed.dart';
part 'input_request_terms_deposit_model.g.dart';

@freezed
abstract class InputRequestTermsDepositModel
    with _$InputRequestTermsDepositModel {
  factory InputRequestTermsDepositModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: "package_id") required int packageId,
    required int amount,
    // ignore: invalid_annotation_target
    @JsonKey(name: "account_id") required int accountId,
    String? note,
  }) = _InputRequestTermsDepositModel;
  factory InputRequestTermsDepositModel.fromJson(Map<String, dynamic> json) =>
      _$InputRequestTermsDepositModelFromJson(json);
}
