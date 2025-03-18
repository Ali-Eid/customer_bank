// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchModelImpl _$$BranchModelImplFromJson(Map<String, dynamic> json) =>
    _$BranchModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      city: json['city'] as String? ?? "",
      address: json['address'] as String? ?? "",
      lat: (json['lat'] as num?)?.toDouble() ?? 0,
      long: (json['long'] as num?)?.toDouble() ?? 0,
      code: json['code'] as String? ?? "",
      phoneNumber: json['phone_number'] as String? ?? "",
      managerName: json['manager_name'] as String? ?? "",
      managerEmail: json['manager_email'] as String? ?? "",
      deactivationReason: json['deactivation_reason'] as String?,
    );

Map<String, dynamic> _$$BranchModelImplToJson(_$BranchModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
      'address': instance.address,
      'lat': instance.lat,
      'long': instance.long,
      'code': instance.code,
      'phone_number': instance.phoneNumber,
      'manager_name': instance.managerName,
      'manager_email': instance.managerEmail,
      'deactivation_reason': instance.deactivationReason,
    };
