// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_terms_deposit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageTermsDepositModelImpl _$$PackageTermsDepositModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageTermsDepositModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      percentage: (json['percentage'] as num?)?.toInt() ?? 0,
      duration: (json['duration'] as num?)?.toInt() ?? 0,
      durationType: json['duration_type'] as String? ?? "",
    );

Map<String, dynamic> _$$PackageTermsDepositModelImplToJson(
        _$PackageTermsDepositModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'percentage': instance.percentage,
      'duration': instance.duration,
      'duration_type': instance.durationType,
    };
