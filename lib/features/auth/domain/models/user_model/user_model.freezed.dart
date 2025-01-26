// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "international_code")
  String get internationalCode => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "branch_id")
  int get branchUd => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_cif")
  int get customerCif => throw _privateConstructorUsedError;
  @JsonKey(name: "corporate_id")
  int? get corporateId => throw _privateConstructorUsedError;
  @JsonKey(name: "corporate_cif")
  int? get corporateCif => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  RoleModel get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int id,
      String username,
      String type,
      @JsonKey(name: "international_code") String internationalCode,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "branch_id") int branchUd,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "customer_id") int customerId,
      @JsonKey(name: "customer_cif") int customerCif,
      @JsonKey(name: "corporate_id") int? corporateId,
      @JsonKey(name: "corporate_cif") int? corporateCif,
      @JsonKey(name: "role") RoleModel role});

  $RoleModelCopyWith<$Res> get role;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? type = null,
    Object? internationalCode = null,
    Object? phoneNumber = null,
    Object? branchUd = null,
    Object? isActive = null,
    Object? customerId = null,
    Object? customerCif = null,
    Object? corporateId = freezed,
    Object? corporateCif = freezed,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      internationalCode: null == internationalCode
          ? _value.internationalCode
          : internationalCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      branchUd: null == branchUd
          ? _value.branchUd
          : branchUd // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      customerCif: null == customerCif
          ? _value.customerCif
          : customerCif // ignore: cast_nullable_to_non_nullable
              as int,
      corporateId: freezed == corporateId
          ? _value.corporateId
          : corporateId // ignore: cast_nullable_to_non_nullable
              as int?,
      corporateCif: freezed == corporateCif
          ? _value.corporateCif
          : corporateCif // ignore: cast_nullable_to_non_nullable
              as int?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as RoleModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleModelCopyWith<$Res> get role {
    return $RoleModelCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      String type,
      @JsonKey(name: "international_code") String internationalCode,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "branch_id") int branchUd,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "customer_id") int customerId,
      @JsonKey(name: "customer_cif") int customerCif,
      @JsonKey(name: "corporate_id") int? corporateId,
      @JsonKey(name: "corporate_cif") int? corporateCif,
      @JsonKey(name: "role") RoleModel role});

  @override
  $RoleModelCopyWith<$Res> get role;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? type = null,
    Object? internationalCode = null,
    Object? phoneNumber = null,
    Object? branchUd = null,
    Object? isActive = null,
    Object? customerId = null,
    Object? customerCif = null,
    Object? corporateId = freezed,
    Object? corporateCif = freezed,
    Object? role = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      internationalCode: null == internationalCode
          ? _value.internationalCode
          : internationalCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      branchUd: null == branchUd
          ? _value.branchUd
          : branchUd // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      customerCif: null == customerCif
          ? _value.customerCif
          : customerCif // ignore: cast_nullable_to_non_nullable
              as int,
      corporateId: freezed == corporateId
          ? _value.corporateId
          : corporateId // ignore: cast_nullable_to_non_nullable
              as int?,
      corporateCif: freezed == corporateCif
          ? _value.corporateCif
          : corporateCif // ignore: cast_nullable_to_non_nullable
              as int?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as RoleModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {this.id = 0,
      this.username = "",
      this.type = "",
      @JsonKey(name: "international_code") this.internationalCode = "",
      @JsonKey(name: "phone_number") this.phoneNumber = "",
      @JsonKey(name: "branch_id") this.branchUd = 0,
      @JsonKey(name: "is_active") this.isActive = false,
      @JsonKey(name: "customer_id") this.customerId = 0,
      @JsonKey(name: "customer_cif") this.customerCif = 0,
      @JsonKey(name: "corporate_id") this.corporateId,
      @JsonKey(name: "corporate_cif") this.corporateCif,
      @JsonKey(name: "role") this.role = const RoleModel()});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey(name: "international_code")
  final String internationalCode;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  @JsonKey(name: "branch_id")
  final int branchUd;
  @override
  @JsonKey(name: "is_active")
  final bool isActive;
  @override
  @JsonKey(name: "customer_id")
  final int customerId;
  @override
  @JsonKey(name: "customer_cif")
  final int customerCif;
  @override
  @JsonKey(name: "corporate_id")
  final int? corporateId;
  @override
  @JsonKey(name: "corporate_cif")
  final int? corporateCif;
  @override
  @JsonKey(name: "role")
  final RoleModel role;

  @override
  String toString() {
    return 'UserModel(id: $id, username: $username, type: $type, internationalCode: $internationalCode, phoneNumber: $phoneNumber, branchUd: $branchUd, isActive: $isActive, customerId: $customerId, customerCif: $customerCif, corporateId: $corporateId, corporateCif: $corporateCif, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.internationalCode, internationalCode) ||
                other.internationalCode == internationalCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.branchUd, branchUd) ||
                other.branchUd == branchUd) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerCif, customerCif) ||
                other.customerCif == customerCif) &&
            (identical(other.corporateId, corporateId) ||
                other.corporateId == corporateId) &&
            (identical(other.corporateCif, corporateCif) ||
                other.corporateCif == corporateCif) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      type,
      internationalCode,
      phoneNumber,
      branchUd,
      isActive,
      customerId,
      customerCif,
      corporateId,
      corporateCif,
      role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {final int id,
      final String username,
      final String type,
      @JsonKey(name: "international_code") final String internationalCode,
      @JsonKey(name: "phone_number") final String phoneNumber,
      @JsonKey(name: "branch_id") final int branchUd,
      @JsonKey(name: "is_active") final bool isActive,
      @JsonKey(name: "customer_id") final int customerId,
      @JsonKey(name: "customer_cif") final int customerCif,
      @JsonKey(name: "corporate_id") final int? corporateId,
      @JsonKey(name: "corporate_cif") final int? corporateCif,
      @JsonKey(name: "role") final RoleModel role}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get type;
  @override
  @JsonKey(name: "international_code")
  String get internationalCode;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  @JsonKey(name: "branch_id")
  int get branchUd;
  @override
  @JsonKey(name: "is_active")
  bool get isActive;
  @override
  @JsonKey(name: "customer_id")
  int get customerId;
  @override
  @JsonKey(name: "customer_cif")
  int get customerCif;
  @override
  @JsonKey(name: "corporate_id")
  int? get corporateId;
  @override
  @JsonKey(name: "corporate_cif")
  int? get corporateCif;
  @override
  @JsonKey(name: "role")
  RoleModel get role;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
