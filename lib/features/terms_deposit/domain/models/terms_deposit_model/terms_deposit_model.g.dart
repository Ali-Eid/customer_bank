// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_deposit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TermsDepositModelImpl _$$TermsDepositModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TermsDepositModelImpl(
      TermsDepositDataModel.fromJson(
          json['terms_deposit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TermsDepositModelImplToJson(
        _$TermsDepositModelImpl instance) =>
    <String, dynamic>{
      'terms_deposit': instance.termsDeposit,
    };

_$TermsDepositDataModelImpl _$$TermsDepositDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TermsDepositDataModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? "",
      package: json['package'] == null
          ? const PackageTermsDepositModel()
          : PackageTermsDepositModel.fromJson(
              json['package'] as Map<String, dynamic>),
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      note: json['note'] as String? ?? "",
    );

Map<String, dynamic> _$$TermsDepositDataModelImplToJson(
        _$TermsDepositDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'package': instance.package,
      'amount': instance.amount,
      'note': instance.note,
    };
