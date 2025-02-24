// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BranchModel _$BranchModelFromJson(Map<String, dynamic> json) {
  return _BranchModel.fromJson(json);
}

/// @nodoc
mixin _$BranchModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "manager_name")
  String get managerName => throw _privateConstructorUsedError;
  @JsonKey(name: "manager_email")
  String get managerEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "deactivation_reason")
  String? get deactivationReason => throw _privateConstructorUsedError;

  /// Serializes this BranchModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BranchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchModelCopyWith<BranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchModelCopyWith<$Res> {
  factory $BranchModelCopyWith(
          BranchModel value, $Res Function(BranchModel) then) =
      _$BranchModelCopyWithImpl<$Res, BranchModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String city,
      String address,
      double lat,
      double long,
      String code,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "manager_name") String managerName,
      @JsonKey(name: "manager_email") String managerEmail,
      @JsonKey(name: "deactivation_reason") String? deactivationReason});
}

/// @nodoc
class _$BranchModelCopyWithImpl<$Res, $Val extends BranchModel>
    implements $BranchModelCopyWith<$Res> {
  _$BranchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? city = null,
    Object? address = null,
    Object? lat = null,
    Object? long = null,
    Object? code = null,
    Object? phoneNumber = null,
    Object? managerName = null,
    Object? managerEmail = null,
    Object? deactivationReason = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      managerName: null == managerName
          ? _value.managerName
          : managerName // ignore: cast_nullable_to_non_nullable
              as String,
      managerEmail: null == managerEmail
          ? _value.managerEmail
          : managerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      deactivationReason: freezed == deactivationReason
          ? _value.deactivationReason
          : deactivationReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchModelImplCopyWith<$Res>
    implements $BranchModelCopyWith<$Res> {
  factory _$$BranchModelImplCopyWith(
          _$BranchModelImpl value, $Res Function(_$BranchModelImpl) then) =
      __$$BranchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String city,
      String address,
      double lat,
      double long,
      String code,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "manager_name") String managerName,
      @JsonKey(name: "manager_email") String managerEmail,
      @JsonKey(name: "deactivation_reason") String? deactivationReason});
}

/// @nodoc
class __$$BranchModelImplCopyWithImpl<$Res>
    extends _$BranchModelCopyWithImpl<$Res, _$BranchModelImpl>
    implements _$$BranchModelImplCopyWith<$Res> {
  __$$BranchModelImplCopyWithImpl(
      _$BranchModelImpl _value, $Res Function(_$BranchModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BranchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? city = null,
    Object? address = null,
    Object? lat = null,
    Object? long = null,
    Object? code = null,
    Object? phoneNumber = null,
    Object? managerName = null,
    Object? managerEmail = null,
    Object? deactivationReason = freezed,
  }) {
    return _then(_$BranchModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      managerName: null == managerName
          ? _value.managerName
          : managerName // ignore: cast_nullable_to_non_nullable
              as String,
      managerEmail: null == managerEmail
          ? _value.managerEmail
          : managerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      deactivationReason: freezed == deactivationReason
          ? _value.deactivationReason
          : deactivationReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchModelImpl implements _BranchModel {
  _$BranchModelImpl(
      {this.id = 0,
      this.name = "",
      this.city = "",
      this.address = "",
      this.lat = 0,
      this.long = 0,
      this.code = "",
      @JsonKey(name: "phone_number") this.phoneNumber = "",
      @JsonKey(name: "manager_name") this.managerName = "",
      @JsonKey(name: "manager_email") this.managerEmail = "",
      @JsonKey(name: "deactivation_reason") this.deactivationReason});

  factory _$BranchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final double lat;
  @override
  @JsonKey()
  final double long;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  @JsonKey(name: "manager_name")
  final String managerName;
  @override
  @JsonKey(name: "manager_email")
  final String managerEmail;
  @override
  @JsonKey(name: "deactivation_reason")
  final String? deactivationReason;

  @override
  String toString() {
    return 'BranchModel(id: $id, name: $name, city: $city, address: $address, lat: $lat, long: $long, code: $code, phoneNumber: $phoneNumber, managerName: $managerName, managerEmail: $managerEmail, deactivationReason: $deactivationReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.managerName, managerName) ||
                other.managerName == managerName) &&
            (identical(other.managerEmail, managerEmail) ||
                other.managerEmail == managerEmail) &&
            (identical(other.deactivationReason, deactivationReason) ||
                other.deactivationReason == deactivationReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, city, address, lat,
      long, code, phoneNumber, managerName, managerEmail, deactivationReason);

  /// Create a copy of BranchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchModelImplCopyWith<_$BranchModelImpl> get copyWith =>
      __$$BranchModelImplCopyWithImpl<_$BranchModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchModelImplToJson(
      this,
    );
  }
}

abstract class _BranchModel implements BranchModel {
  factory _BranchModel(
      {final int id,
      final String name,
      final String city,
      final String address,
      final double lat,
      final double long,
      final String code,
      @JsonKey(name: "phone_number") final String phoneNumber,
      @JsonKey(name: "manager_name") final String managerName,
      @JsonKey(name: "manager_email") final String managerEmail,
      @JsonKey(name: "deactivation_reason")
      final String? deactivationReason}) = _$BranchModelImpl;

  factory _BranchModel.fromJson(Map<String, dynamic> json) =
      _$BranchModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get city;
  @override
  String get address;
  @override
  double get lat;
  @override
  double get long;
  @override
  String get code;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  @JsonKey(name: "manager_name")
  String get managerName;
  @override
  @JsonKey(name: "manager_email")
  String get managerEmail;
  @override
  @JsonKey(name: "deactivation_reason")
  String? get deactivationReason;

  /// Create a copy of BranchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchModelImplCopyWith<_$BranchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
