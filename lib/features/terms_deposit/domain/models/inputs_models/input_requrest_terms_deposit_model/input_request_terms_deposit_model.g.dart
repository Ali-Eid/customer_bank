// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_request_terms_deposit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputRequestTermsDepositModelImpl
    _$$InputRequestTermsDepositModelImplFromJson(Map<String, dynamic> json) =>
        _$InputRequestTermsDepositModelImpl(
          packageId: (json['package_id'] as num).toInt(),
          amount: (json['amount'] as num).toInt(),
          accountId: (json['account_id'] as num).toInt(),
          note: json['note'] as String?,
        );

Map<String, dynamic> _$$InputRequestTermsDepositModelImplToJson(
        _$InputRequestTermsDepositModelImpl instance) =>
    <String, dynamic>{
      'package_id': instance.packageId,
      'amount': instance.amount,
      'account_id': instance.accountId,
      'note': instance.note,
    };
