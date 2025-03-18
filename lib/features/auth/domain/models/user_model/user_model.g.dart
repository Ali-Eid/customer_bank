// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      username: json['username'] as String? ?? "",
      type: json['type'] as String? ?? "",
      internationalCode: json['international_code'] as String? ?? "",
      phoneNumber: json['phone_number'] as String? ?? "",
      branchUd: (json['branch_id'] as num?)?.toInt() ?? 0,
      isActive: json['is_active'] as bool? ?? false,
      customerId: (json['customer_id'] as num?)?.toInt() ?? 0,
      customerCif: (json['customer_cif'] as num?)?.toInt() ?? 0,
      corporateId: (json['corporate_id'] as num?)?.toInt(),
      corporateCif: (json['corporate_cif'] as num?)?.toInt(),
      role: json['role'] == null
          ? const RoleModel()
          : RoleModel.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'type': instance.type,
      'international_code': instance.internationalCode,
      'phone_number': instance.phoneNumber,
      'branch_id': instance.branchUd,
      'is_active': instance.isActive,
      'customer_id': instance.customerId,
      'customer_cif': instance.customerCif,
      'corporate_id': instance.corporateId,
      'corporate_cif': instance.corporateCif,
      'role': instance.role,
    };
