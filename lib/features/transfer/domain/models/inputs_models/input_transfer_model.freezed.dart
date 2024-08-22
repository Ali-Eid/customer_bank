// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_transfer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputTransferModel _$InputTransferModelFromJson(Map<String, dynamic> json) {
  return _InputTransferModel.fromJson(json);
}

/// @nodoc
mixin _$InputTransferModel {
  @JsonKey(name: "fromAccountNo")
  String get fromAccount => throw _privateConstructorUsedError;
  @JsonKey(name: "toAccountNo")
  String get toAccount => throw _privateConstructorUsedError;
  @JsonKey(name: "transferDate")
  String get transferDate => throw _privateConstructorUsedError;
  @JsonKey(name: "transferAmount")
  num get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "transferDescription")
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputTransferModelCopyWith<InputTransferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputTransferModelCopyWith<$Res> {
  factory $InputTransferModelCopyWith(
          InputTransferModel value, $Res Function(InputTransferModel) then) =
      _$InputTransferModelCopyWithImpl<$Res, InputTransferModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "fromAccountNo") String fromAccount,
      @JsonKey(name: "toAccountNo") String toAccount,
      @JsonKey(name: "transferDate") String transferDate,
      @JsonKey(name: "transferAmount") num amount,
      @JsonKey(name: "transferDescription") String description});
}

/// @nodoc
class _$InputTransferModelCopyWithImpl<$Res, $Val extends InputTransferModel>
    implements $InputTransferModelCopyWith<$Res> {
  _$InputTransferModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromAccount = null,
    Object? toAccount = null,
    Object? transferDate = null,
    Object? amount = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      fromAccount: null == fromAccount
          ? _value.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as String,
      toAccount: null == toAccount
          ? _value.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as String,
      transferDate: null == transferDate
          ? _value.transferDate
          : transferDate // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputTransferModelImplCopyWith<$Res>
    implements $InputTransferModelCopyWith<$Res> {
  factory _$$InputTransferModelImplCopyWith(_$InputTransferModelImpl value,
          $Res Function(_$InputTransferModelImpl) then) =
      __$$InputTransferModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "fromAccountNo") String fromAccount,
      @JsonKey(name: "toAccountNo") String toAccount,
      @JsonKey(name: "transferDate") String transferDate,
      @JsonKey(name: "transferAmount") num amount,
      @JsonKey(name: "transferDescription") String description});
}

/// @nodoc
class __$$InputTransferModelImplCopyWithImpl<$Res>
    extends _$InputTransferModelCopyWithImpl<$Res, _$InputTransferModelImpl>
    implements _$$InputTransferModelImplCopyWith<$Res> {
  __$$InputTransferModelImplCopyWithImpl(_$InputTransferModelImpl _value,
      $Res Function(_$InputTransferModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromAccount = null,
    Object? toAccount = null,
    Object? transferDate = null,
    Object? amount = null,
    Object? description = null,
  }) {
    return _then(_$InputTransferModelImpl(
      fromAccount: null == fromAccount
          ? _value.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as String,
      toAccount: null == toAccount
          ? _value.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as String,
      transferDate: null == transferDate
          ? _value.transferDate
          : transferDate // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputTransferModelImpl implements _InputTransferModel {
  _$InputTransferModelImpl(
      {@JsonKey(name: "fromAccountNo") required this.fromAccount,
      @JsonKey(name: "toAccountNo") required this.toAccount,
      @JsonKey(name: "transferDate") required this.transferDate,
      @JsonKey(name: "transferAmount") required this.amount,
      @JsonKey(name: "transferDescription") required this.description});

  factory _$InputTransferModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputTransferModelImplFromJson(json);

  @override
  @JsonKey(name: "fromAccountNo")
  final String fromAccount;
  @override
  @JsonKey(name: "toAccountNo")
  final String toAccount;
  @override
  @JsonKey(name: "transferDate")
  final String transferDate;
  @override
  @JsonKey(name: "transferAmount")
  final num amount;
  @override
  @JsonKey(name: "transferDescription")
  final String description;

  @override
  String toString() {
    return 'InputTransferModel(fromAccount: $fromAccount, toAccount: $toAccount, transferDate: $transferDate, amount: $amount, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputTransferModelImpl &&
            (identical(other.fromAccount, fromAccount) ||
                other.fromAccount == fromAccount) &&
            (identical(other.toAccount, toAccount) ||
                other.toAccount == toAccount) &&
            (identical(other.transferDate, transferDate) ||
                other.transferDate == transferDate) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fromAccount, toAccount, transferDate, amount, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputTransferModelImplCopyWith<_$InputTransferModelImpl> get copyWith =>
      __$$InputTransferModelImplCopyWithImpl<_$InputTransferModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputTransferModelImplToJson(
      this,
    );
  }
}

abstract class _InputTransferModel implements InputTransferModel {
  factory _InputTransferModel(
      {@JsonKey(name: "fromAccountNo") required final String fromAccount,
      @JsonKey(name: "toAccountNo") required final String toAccount,
      @JsonKey(name: "transferDate") required final String transferDate,
      @JsonKey(name: "transferAmount") required final num amount,
      @JsonKey(name: "transferDescription")
      required final String description}) = _$InputTransferModelImpl;

  factory _InputTransferModel.fromJson(Map<String, dynamic> json) =
      _$InputTransferModelImpl.fromJson;

  @override
  @JsonKey(name: "fromAccountNo")
  String get fromAccount;
  @override
  @JsonKey(name: "toAccountNo")
  String get toAccount;
  @override
  @JsonKey(name: "transferDate")
  String get transferDate;
  @override
  @JsonKey(name: "transferAmount")
  num get amount;
  @override
  @JsonKey(name: "transferDescription")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$InputTransferModelImplCopyWith<_$InputTransferModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
