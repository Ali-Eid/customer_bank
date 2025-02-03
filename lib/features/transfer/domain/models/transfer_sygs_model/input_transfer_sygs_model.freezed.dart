// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_transfer_sygs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputTransferSygsModel _$InputTransferSygsModelFromJson(
    Map<String, dynamic> json) {
  return _InputTransferSygsModel.fromJson(json);
}

/// @nodoc
mixin _$InputTransferSygsModel {
  @JsonKey(name: "bank_id")
  int get bankId => throw _privateConstructorUsedError;
  @JsonKey(name: "fromAccountNo")
  String get fromAccount => throw _privateConstructorUsedError;
  @JsonKey(name: "toAccountNo")
  String get toAccount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  num get amount =>
      throw _privateConstructorUsedError; // @JsonKey(name: "currency_code") required String currencyCode,
  @JsonKey(name: "reason_id")
  int get reasonId => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this InputTransferSygsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputTransferSygsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputTransferSygsModelCopyWith<InputTransferSygsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputTransferSygsModelCopyWith<$Res> {
  factory $InputTransferSygsModelCopyWith(InputTransferSygsModel value,
          $Res Function(InputTransferSygsModel) then) =
      _$InputTransferSygsModelCopyWithImpl<$Res, InputTransferSygsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "bank_id") int bankId,
      @JsonKey(name: "fromAccountNo") String fromAccount,
      @JsonKey(name: "toAccountNo") String toAccount,
      @JsonKey(name: "amount") num amount,
      @JsonKey(name: "reason_id") int reasonId,
      @JsonKey(name: "note") String? note});
}

/// @nodoc
class _$InputTransferSygsModelCopyWithImpl<$Res,
        $Val extends InputTransferSygsModel>
    implements $InputTransferSygsModelCopyWith<$Res> {
  _$InputTransferSygsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputTransferSygsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankId = null,
    Object? fromAccount = null,
    Object? toAccount = null,
    Object? amount = null,
    Object? reasonId = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      bankId: null == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int,
      fromAccount: null == fromAccount
          ? _value.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as String,
      toAccount: null == toAccount
          ? _value.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      reasonId: null == reasonId
          ? _value.reasonId
          : reasonId // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputTransferSygsModelImplCopyWith<$Res>
    implements $InputTransferSygsModelCopyWith<$Res> {
  factory _$$InputTransferSygsModelImplCopyWith(
          _$InputTransferSygsModelImpl value,
          $Res Function(_$InputTransferSygsModelImpl) then) =
      __$$InputTransferSygsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "bank_id") int bankId,
      @JsonKey(name: "fromAccountNo") String fromAccount,
      @JsonKey(name: "toAccountNo") String toAccount,
      @JsonKey(name: "amount") num amount,
      @JsonKey(name: "reason_id") int reasonId,
      @JsonKey(name: "note") String? note});
}

/// @nodoc
class __$$InputTransferSygsModelImplCopyWithImpl<$Res>
    extends _$InputTransferSygsModelCopyWithImpl<$Res,
        _$InputTransferSygsModelImpl>
    implements _$$InputTransferSygsModelImplCopyWith<$Res> {
  __$$InputTransferSygsModelImplCopyWithImpl(
      _$InputTransferSygsModelImpl _value,
      $Res Function(_$InputTransferSygsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputTransferSygsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankId = null,
    Object? fromAccount = null,
    Object? toAccount = null,
    Object? amount = null,
    Object? reasonId = null,
    Object? note = freezed,
  }) {
    return _then(_$InputTransferSygsModelImpl(
      bankId: null == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int,
      fromAccount: null == fromAccount
          ? _value.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as String,
      toAccount: null == toAccount
          ? _value.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      reasonId: null == reasonId
          ? _value.reasonId
          : reasonId // ignore: cast_nullable_to_non_nullable
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
class _$InputTransferSygsModelImpl implements _InputTransferSygsModel {
  _$InputTransferSygsModelImpl(
      {@JsonKey(name: "bank_id") required this.bankId,
      @JsonKey(name: "fromAccountNo") required this.fromAccount,
      @JsonKey(name: "toAccountNo") required this.toAccount,
      @JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "reason_id") required this.reasonId,
      @JsonKey(name: "note") this.note});

  factory _$InputTransferSygsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputTransferSygsModelImplFromJson(json);

  @override
  @JsonKey(name: "bank_id")
  final int bankId;
  @override
  @JsonKey(name: "fromAccountNo")
  final String fromAccount;
  @override
  @JsonKey(name: "toAccountNo")
  final String toAccount;
  @override
  @JsonKey(name: "amount")
  final num amount;
// @JsonKey(name: "currency_code") required String currencyCode,
  @override
  @JsonKey(name: "reason_id")
  final int reasonId;
  @override
  @JsonKey(name: "note")
  final String? note;

  @override
  String toString() {
    return 'InputTransferSygsModel(bankId: $bankId, fromAccount: $fromAccount, toAccount: $toAccount, amount: $amount, reasonId: $reasonId, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputTransferSygsModelImpl &&
            (identical(other.bankId, bankId) || other.bankId == bankId) &&
            (identical(other.fromAccount, fromAccount) ||
                other.fromAccount == fromAccount) &&
            (identical(other.toAccount, toAccount) ||
                other.toAccount == toAccount) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.reasonId, reasonId) ||
                other.reasonId == reasonId) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, bankId, fromAccount, toAccount, amount, reasonId, note);

  /// Create a copy of InputTransferSygsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputTransferSygsModelImplCopyWith<_$InputTransferSygsModelImpl>
      get copyWith => __$$InputTransferSygsModelImplCopyWithImpl<
          _$InputTransferSygsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputTransferSygsModelImplToJson(
      this,
    );
  }
}

abstract class _InputTransferSygsModel implements InputTransferSygsModel {
  factory _InputTransferSygsModel(
          {@JsonKey(name: "bank_id") required final int bankId,
          @JsonKey(name: "fromAccountNo") required final String fromAccount,
          @JsonKey(name: "toAccountNo") required final String toAccount,
          @JsonKey(name: "amount") required final num amount,
          @JsonKey(name: "reason_id") required final int reasonId,
          @JsonKey(name: "note") final String? note}) =
      _$InputTransferSygsModelImpl;

  factory _InputTransferSygsModel.fromJson(Map<String, dynamic> json) =
      _$InputTransferSygsModelImpl.fromJson;

  @override
  @JsonKey(name: "bank_id")
  int get bankId;
  @override
  @JsonKey(name: "fromAccountNo")
  String get fromAccount;
  @override
  @JsonKey(name: "toAccountNo")
  String get toAccount;
  @override
  @JsonKey(name: "amount")
  num get amount; // @JsonKey(name: "currency_code") required String currencyCode,
  @override
  @JsonKey(name: "reason_id")
  int get reasonId;
  @override
  @JsonKey(name: "note")
  String? get note;

  /// Create a copy of InputTransferSygsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputTransferSygsModelImplCopyWith<_$InputTransferSygsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
