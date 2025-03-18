// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_statement_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountStatementSettingsModelImpl
    _$$AccountStatementSettingsModelImplFromJson(Map<String, dynamic> json) =>
        _$AccountStatementSettingsModelImpl(
          viewMaxPeriod: (json['view_max_period'] as num?)?.toInt() ?? 0,
          exportMaxPeriod: (json['export_max_period'] as num?)?.toInt() ?? 0,
        );

Map<String, dynamic> _$$AccountStatementSettingsModelImplToJson(
        _$AccountStatementSettingsModelImpl instance) =>
    <String, dynamic>{
      'view_max_period': instance.viewMaxPeriod,
      'export_max_period': instance.exportMaxPeriod,
    };
