// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_request_terms_deposit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputRequestTermsDepositModel _$InputRequestTermsDepositModelFromJson(
    Map<String, dynamic> json) {
  return _InputRequestTermsDepositModel.fromJson(json);
}

/// @nodoc
mixin _$InputRequestTermsDepositModel {
// ignore: invalid_annotation_target
  @JsonKey(name: "package_id")
  int get packageId => throw _privateConstructorUsedError;
  int get amount =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "account_id")
  int get accountId => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this InputRequestTermsDepositModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputRequestTermsDepositModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputRequestTermsDepositModelCopyWith<InputRequestTermsDepositModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputRequestTermsDepositModelCopyWith<$Res> {
  factory $InputRequestTermsDepositModelCopyWith(
          InputRequestTermsDepositModel value,
          $Res Function(InputRequestTermsDepositModel) then) =
      _$InputRequestTermsDepositModelCopyWithImpl<$Res,
          InputRequestTermsDepositModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "package_id") int packageId,
      int amount,
      @JsonKey(name: "account_id") int accountId,
      String? note});
}

/// @nodoc
class _$InputRequestTermsDepositModelCopyWithImpl<$Res,
        $Val extends InputRequestTermsDepositModel>
    implements $InputRequestTermsDepositModelCopyWith<$Res> {
  _$InputRequestTermsDepositModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputRequestTermsDepositModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageId = null,
    Object? amount = null,
    Object? accountId = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      packageId: null == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputRequestTermsDepositModelImplCopyWith<$Res>
    implements $InputRequestTermsDepositModelCopyWith<$Res> {
  factory _$$InputRequestTermsDepositModelImplCopyWith(
          _$InputRequestTermsDepositModelImpl value,
          $Res Function(_$InputRequestTermsDepositModelImpl) then) =
      __$$InputRequestTermsDepositModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "package_id") int packageId,
      int amount,
      @JsonKey(name: "account_id") int accountId,
      String? note});
}

/// @nodoc
class __$$InputRequestTermsDepositModelImplCopyWithImpl<$Res>
    extends _$InputRequestTermsDepositModelCopyWithImpl<$Res,
        _$InputRequestTermsDepositModelImpl>
    implements _$$InputRequestTermsDepositModelImplCopyWith<$Res> {
  __$$InputRequestTermsDepositModelImplCopyWithImpl(
      _$InputRequestTermsDepositModelImpl _value,
      $Res Function(_$InputRequestTermsDepositModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputRequestTermsDepositModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageId = null,
    Object? amount = null,
    Object? accountId = null,
    Object? note = freezed,
  }) {
    return _then(_$InputRequestTermsDepositModelImpl(
      packageId: null == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputRequestTermsDepositModelImpl
    implements _InputRequestTermsDepositModel {
  _$InputRequestTermsDepositModelImpl(
      {@JsonKey(name: "package_id") required this.packageId,
      required this.amount,
      @JsonKey(name: "account_id") required this.accountId,
      this.note});

  factory _$InputRequestTermsDepositModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InputRequestTermsDepositModelImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "package_id")
  final int packageId;
  @override
  final int amount;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "account_id")
  final int accountId;
  @override
  final String? note;

  @override
  String toString() {
    return 'InputRequestTermsDepositModel(packageId: $packageId, amount: $amount, accountId: $accountId, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputRequestTermsDepositModelImpl &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, packageId, amount, accountId, note);

  /// Create a copy of InputRequestTermsDepositModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputRequestTermsDepositModelImplCopyWith<
          _$InputRequestTermsDepositModelImpl>
      get copyWith => __$$InputRequestTermsDepositModelImplCopyWithImpl<
          _$InputRequestTermsDepositModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputRequestTermsDepositModelImplToJson(
      this,
    );
  }
}

abstract class _InputRequestTermsDepositModel
    implements InputRequestTermsDepositModel {
  factory _InputRequestTermsDepositModel(
      {@JsonKey(name: "package_id") required final int packageId,
      required final int amount,
      @JsonKey(name: "account_id") required final int accountId,
      final String? note}) = _$InputRequestTermsDepositModelImpl;

  factory _InputRequestTermsDepositModel.fromJson(Map<String, dynamic> json) =
      _$InputRequestTermsDepositModelImpl.fromJson;

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "package_id")
  int get packageId;
  @override
  int get amount; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: "account_id")
  int get accountId;
  @override
  String? get note;

  /// Create a copy of InputRequestTermsDepositModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputRequestTermsDepositModelImplCopyWith<
          _$InputRequestTermsDepositModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
