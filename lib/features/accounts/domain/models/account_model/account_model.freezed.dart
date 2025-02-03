// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountModel _$AccountModelFromJson(Map<String, dynamic> json) {
  return _AccountModel.fromJson(json);
}

/// @nodoc
mixin _$AccountModel {
  int get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: "account_number")
  String get accountNumber => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "is_default")
  bool get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: "account_type")
  StaticModel get accountType => throw _privateConstructorUsedError;

  /// Serializes this AccountModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountModelCopyWith<AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountModelCopyWith<$Res> {
  factory $AccountModelCopyWith(
          AccountModel value, $Res Function(AccountModel) then) =
      _$AccountModelCopyWithImpl<$Res, AccountModel>;
  @useResult
  $Res call(
      {int id,
      String label,
      @JsonKey(name: "account_number") String accountNumber,
      int balance,
      String status,
      @JsonKey(name: "is_default") bool isDefault,
      @JsonKey(name: "account_type") StaticModel accountType});

  $StaticModelCopyWith<$Res> get accountType;
}

/// @nodoc
class _$AccountModelCopyWithImpl<$Res, $Val extends AccountModel>
    implements $AccountModelCopyWith<$Res> {
  _$AccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? accountNumber = null,
    Object? balance = null,
    Object? status = null,
    Object? isDefault = null,
    Object? accountType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as StaticModel,
    ) as $Val);
  }

  /// Create a copy of AccountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaticModelCopyWith<$Res> get accountType {
    return $StaticModelCopyWith<$Res>(_value.accountType, (value) {
      return _then(_value.copyWith(accountType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountModelImplCopyWith<$Res>
    implements $AccountModelCopyWith<$Res> {
  factory _$$AccountModelImplCopyWith(
          _$AccountModelImpl value, $Res Function(_$AccountModelImpl) then) =
      __$$AccountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String label,
      @JsonKey(name: "account_number") String accountNumber,
      int balance,
      String status,
      @JsonKey(name: "is_default") bool isDefault,
      @JsonKey(name: "account_type") StaticModel accountType});

  @override
  $StaticModelCopyWith<$Res> get accountType;
}

/// @nodoc
class __$$AccountModelImplCopyWithImpl<$Res>
    extends _$AccountModelCopyWithImpl<$Res, _$AccountModelImpl>
    implements _$$AccountModelImplCopyWith<$Res> {
  __$$AccountModelImplCopyWithImpl(
      _$AccountModelImpl _value, $Res Function(_$AccountModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? accountNumber = null,
    Object? balance = null,
    Object? status = null,
    Object? isDefault = null,
    Object? accountType = null,
  }) {
    return _then(_$AccountModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as StaticModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountModelImpl implements _AccountModel {
  const _$AccountModelImpl(
      {this.id = 0,
      this.label = "",
      @JsonKey(name: "account_number") this.accountNumber = "",
      this.balance = 0,
      this.status = "",
      @JsonKey(name: "is_default") this.isDefault = false,
      @JsonKey(name: "account_type") this.accountType = const StaticModel()});

  factory _$AccountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String label;
  @override
  @JsonKey(name: "account_number")
  final String accountNumber;
  @override
  @JsonKey()
  final int balance;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey(name: "is_default")
  final bool isDefault;
  @override
  @JsonKey(name: "account_type")
  final StaticModel accountType;

  @override
  String toString() {
    return 'AccountModel(id: $id, label: $label, accountNumber: $accountNumber, balance: $balance, status: $status, isDefault: $isDefault, accountType: $accountType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, label, accountNumber,
      balance, status, isDefault, accountType);

  /// Create a copy of AccountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountModelImplCopyWith<_$AccountModelImpl> get copyWith =>
      __$$AccountModelImplCopyWithImpl<_$AccountModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountModelImplToJson(
      this,
    );
  }
}

abstract class _AccountModel implements AccountModel {
  const factory _AccountModel(
          {final int id,
          final String label,
          @JsonKey(name: "account_number") final String accountNumber,
          final int balance,
          final String status,
          @JsonKey(name: "is_default") final bool isDefault,
          @JsonKey(name: "account_type") final StaticModel accountType}) =
      _$AccountModelImpl;

  factory _AccountModel.fromJson(Map<String, dynamic> json) =
      _$AccountModelImpl.fromJson;

  @override
  int get id;
  @override
  String get label;
  @override
  @JsonKey(name: "account_number")
  String get accountNumber;
  @override
  int get balance;
  @override
  String get status;
  @override
  @JsonKey(name: "is_default")
  bool get isDefault;
  @override
  @JsonKey(name: "account_type")
  StaticModel get accountType;

  /// Create a copy of AccountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountModelImplCopyWith<_$AccountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
