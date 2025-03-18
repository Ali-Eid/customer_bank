// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfere_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreTransferModel _$StoreTransferModelFromJson(Map<String, dynamic> json) {
  return _StoreTransferModel.fromJson(json);
}

/// @nodoc
mixin _$StoreTransferModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "fromAccount")
  AccountModel get fromAccountNo => throw _privateConstructorUsedError;
  @JsonKey(name: "toAccount")
  AccountModel get toAccountNo => throw _privateConstructorUsedError;
  @JsonKey(name: "toAccountNo")
  String get toAccountNo2 => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String get note => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "completed_at")
  String get completedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "declined_at")
  String get declinedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "ref_id")
  String get refId => throw _privateConstructorUsedError;
  @JsonKey(name: "with_otp")
  bool get withOtp => throw _privateConstructorUsedError;

  /// Serializes this StoreTransferModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreTransferModelCopyWith<StoreTransferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreTransferModelCopyWith<$Res> {
  factory $StoreTransferModelCopyWith(
          StoreTransferModel value, $Res Function(StoreTransferModel) then) =
      _$StoreTransferModelCopyWithImpl<$Res, StoreTransferModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "customer_id") int customerId,
      @JsonKey(name: "fromAccount") AccountModel fromAccountNo,
      @JsonKey(name: "toAccount") AccountModel toAccountNo,
      @JsonKey(name: "toAccountNo") String toAccountNo2,
      @JsonKey(name: "amount") int amount,
      @JsonKey(name: "currency_code") String currencyCode,
      @JsonKey(name: "note") String note,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "completed_at") String completedAt,
      @JsonKey(name: "declined_at") String declinedAt,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "ref_id") String refId,
      @JsonKey(name: "with_otp") bool withOtp});

  $AccountModelCopyWith<$Res> get fromAccountNo;
  $AccountModelCopyWith<$Res> get toAccountNo;
}

/// @nodoc
class _$StoreTransferModelCopyWithImpl<$Res, $Val extends StoreTransferModel>
    implements $StoreTransferModelCopyWith<$Res> {
  _$StoreTransferModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? fromAccountNo = null,
    Object? toAccountNo = null,
    Object? toAccountNo2 = null,
    Object? amount = null,
    Object? currencyCode = null,
    Object? note = null,
    Object? status = null,
    Object? completedAt = null,
    Object? declinedAt = null,
    Object? createdAt = null,
    Object? refId = null,
    Object? withOtp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      fromAccountNo: null == fromAccountNo
          ? _value.fromAccountNo
          : fromAccountNo // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      toAccountNo: null == toAccountNo
          ? _value.toAccountNo
          : toAccountNo // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      toAccountNo2: null == toAccountNo2
          ? _value.toAccountNo2
          : toAccountNo2 // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String,
      declinedAt: null == declinedAt
          ? _value.declinedAt
          : declinedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
      withOtp: null == withOtp
          ? _value.withOtp
          : withOtp // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of StoreTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountModelCopyWith<$Res> get fromAccountNo {
    return $AccountModelCopyWith<$Res>(_value.fromAccountNo, (value) {
      return _then(_value.copyWith(fromAccountNo: value) as $Val);
    });
  }

  /// Create a copy of StoreTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountModelCopyWith<$Res> get toAccountNo {
    return $AccountModelCopyWith<$Res>(_value.toAccountNo, (value) {
      return _then(_value.copyWith(toAccountNo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreTransferModelImplCopyWith<$Res>
    implements $StoreTransferModelCopyWith<$Res> {
  factory _$$StoreTransferModelImplCopyWith(_$StoreTransferModelImpl value,
          $Res Function(_$StoreTransferModelImpl) then) =
      __$$StoreTransferModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "customer_id") int customerId,
      @JsonKey(name: "fromAccount") AccountModel fromAccountNo,
      @JsonKey(name: "toAccount") AccountModel toAccountNo,
      @JsonKey(name: "toAccountNo") String toAccountNo2,
      @JsonKey(name: "amount") int amount,
      @JsonKey(name: "currency_code") String currencyCode,
      @JsonKey(name: "note") String note,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "completed_at") String completedAt,
      @JsonKey(name: "declined_at") String declinedAt,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "ref_id") String refId,
      @JsonKey(name: "with_otp") bool withOtp});

  @override
  $AccountModelCopyWith<$Res> get fromAccountNo;
  @override
  $AccountModelCopyWith<$Res> get toAccountNo;
}

/// @nodoc
class __$$StoreTransferModelImplCopyWithImpl<$Res>
    extends _$StoreTransferModelCopyWithImpl<$Res, _$StoreTransferModelImpl>
    implements _$$StoreTransferModelImplCopyWith<$Res> {
  __$$StoreTransferModelImplCopyWithImpl(_$StoreTransferModelImpl _value,
      $Res Function(_$StoreTransferModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? fromAccountNo = null,
    Object? toAccountNo = null,
    Object? toAccountNo2 = null,
    Object? amount = null,
    Object? currencyCode = null,
    Object? note = null,
    Object? status = null,
    Object? completedAt = null,
    Object? declinedAt = null,
    Object? createdAt = null,
    Object? refId = null,
    Object? withOtp = null,
  }) {
    return _then(_$StoreTransferModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      fromAccountNo: null == fromAccountNo
          ? _value.fromAccountNo
          : fromAccountNo // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      toAccountNo: null == toAccountNo
          ? _value.toAccountNo
          : toAccountNo // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      toAccountNo2: null == toAccountNo2
          ? _value.toAccountNo2
          : toAccountNo2 // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String,
      declinedAt: null == declinedAt
          ? _value.declinedAt
          : declinedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
      withOtp: null == withOtp
          ? _value.withOtp
          : withOtp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreTransferModelImpl implements _StoreTransferModel {
  _$StoreTransferModelImpl(
      {this.id = 0,
      @JsonKey(name: "customer_id") this.customerId = 0,
      @JsonKey(name: "fromAccount") this.fromAccountNo = const AccountModel(),
      @JsonKey(name: "toAccount") this.toAccountNo = const AccountModel(),
      @JsonKey(name: "toAccountNo") this.toAccountNo2 = "",
      @JsonKey(name: "amount") this.amount = 0,
      @JsonKey(name: "currency_code") this.currencyCode = "",
      @JsonKey(name: "note") this.note = "",
      @JsonKey(name: "status") this.status = "",
      @JsonKey(name: "completed_at") this.completedAt = "",
      @JsonKey(name: "declined_at") this.declinedAt = "",
      @JsonKey(name: "created_at") this.createdAt = "",
      @JsonKey(name: "ref_id") this.refId = "",
      @JsonKey(name: "with_otp") this.withOtp = false});

  factory _$StoreTransferModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreTransferModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: "customer_id")
  final int customerId;
  @override
  @JsonKey(name: "fromAccount")
  final AccountModel fromAccountNo;
  @override
  @JsonKey(name: "toAccount")
  final AccountModel toAccountNo;
  @override
  @JsonKey(name: "toAccountNo")
  final String toAccountNo2;
  @override
  @JsonKey(name: "amount")
  final int amount;
  @override
  @JsonKey(name: "currency_code")
  final String currencyCode;
  @override
  @JsonKey(name: "note")
  final String note;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "completed_at")
  final String completedAt;
  @override
  @JsonKey(name: "declined_at")
  final String declinedAt;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @JsonKey(name: "ref_id")
  final String refId;
  @override
  @JsonKey(name: "with_otp")
  final bool withOtp;

  @override
  String toString() {
    return 'StoreTransferModel(id: $id, customerId: $customerId, fromAccountNo: $fromAccountNo, toAccountNo: $toAccountNo, toAccountNo2: $toAccountNo2, amount: $amount, currencyCode: $currencyCode, note: $note, status: $status, completedAt: $completedAt, declinedAt: $declinedAt, createdAt: $createdAt, refId: $refId, withOtp: $withOtp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreTransferModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.fromAccountNo, fromAccountNo) ||
                other.fromAccountNo == fromAccountNo) &&
            (identical(other.toAccountNo, toAccountNo) ||
                other.toAccountNo == toAccountNo) &&
            (identical(other.toAccountNo2, toAccountNo2) ||
                other.toAccountNo2 == toAccountNo2) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.declinedAt, declinedAt) ||
                other.declinedAt == declinedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.withOtp, withOtp) || other.withOtp == withOtp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      customerId,
      fromAccountNo,
      toAccountNo,
      toAccountNo2,
      amount,
      currencyCode,
      note,
      status,
      completedAt,
      declinedAt,
      createdAt,
      refId,
      withOtp);

  /// Create a copy of StoreTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreTransferModelImplCopyWith<_$StoreTransferModelImpl> get copyWith =>
      __$$StoreTransferModelImplCopyWithImpl<_$StoreTransferModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreTransferModelImplToJson(
      this,
    );
  }
}

abstract class _StoreTransferModel implements StoreTransferModel {
  factory _StoreTransferModel(
          {final int id,
          @JsonKey(name: "customer_id") final int customerId,
          @JsonKey(name: "fromAccount") final AccountModel fromAccountNo,
          @JsonKey(name: "toAccount") final AccountModel toAccountNo,
          @JsonKey(name: "toAccountNo") final String toAccountNo2,
          @JsonKey(name: "amount") final int amount,
          @JsonKey(name: "currency_code") final String currencyCode,
          @JsonKey(name: "note") final String note,
          @JsonKey(name: "status") final String status,
          @JsonKey(name: "completed_at") final String completedAt,
          @JsonKey(name: "declined_at") final String declinedAt,
          @JsonKey(name: "created_at") final String createdAt,
          @JsonKey(name: "ref_id") final String refId,
          @JsonKey(name: "with_otp") final bool withOtp}) =
      _$StoreTransferModelImpl;

  factory _StoreTransferModel.fromJson(Map<String, dynamic> json) =
      _$StoreTransferModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "customer_id")
  int get customerId;
  @override
  @JsonKey(name: "fromAccount")
  AccountModel get fromAccountNo;
  @override
  @JsonKey(name: "toAccount")
  AccountModel get toAccountNo;
  @override
  @JsonKey(name: "toAccountNo")
  String get toAccountNo2;
  @override
  @JsonKey(name: "amount")
  int get amount;
  @override
  @JsonKey(name: "currency_code")
  String get currencyCode;
  @override
  @JsonKey(name: "note")
  String get note;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "completed_at")
  String get completedAt;
  @override
  @JsonKey(name: "declined_at")
  String get declinedAt;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(name: "ref_id")
  String get refId;
  @override
  @JsonKey(name: "with_otp")
  bool get withOtp;

  /// Create a copy of StoreTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreTransferModelImplCopyWith<_$StoreTransferModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConfirmTransferModel _$ConfirmTransferModelFromJson(Map<String, dynamic> json) {
  return _ConfirmTransferModel.fromJson(json);
}

/// @nodoc
mixin _$ConfirmTransferModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "fromAccountNo")
  String get fromAccountNo => throw _privateConstructorUsedError;
  @JsonKey(name: "toAccountNo")
  String get toAccountNo => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String get note => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "completed_at")
  String get completedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "declined_at")
  String get declinedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ConfirmTransferModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmTransferModelCopyWith<ConfirmTransferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmTransferModelCopyWith<$Res> {
  factory $ConfirmTransferModelCopyWith(ConfirmTransferModel value,
          $Res Function(ConfirmTransferModel) then) =
      _$ConfirmTransferModelCopyWithImpl<$Res, ConfirmTransferModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "customer_id") int customerId,
      @JsonKey(name: "fromAccountNo") String fromAccountNo,
      @JsonKey(name: "toAccountNo") String toAccountNo,
      @JsonKey(name: "amount") int amount,
      @JsonKey(name: "currency_code") String currencyCode,
      @JsonKey(name: "note") String note,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "completed_at") String completedAt,
      @JsonKey(name: "declined_at") String declinedAt,
      @JsonKey(name: "created_at") String createdAt});
}

/// @nodoc
class _$ConfirmTransferModelCopyWithImpl<$Res,
        $Val extends ConfirmTransferModel>
    implements $ConfirmTransferModelCopyWith<$Res> {
  _$ConfirmTransferModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? fromAccountNo = null,
    Object? toAccountNo = null,
    Object? amount = null,
    Object? currencyCode = null,
    Object? note = null,
    Object? status = null,
    Object? completedAt = null,
    Object? declinedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      fromAccountNo: null == fromAccountNo
          ? _value.fromAccountNo
          : fromAccountNo // ignore: cast_nullable_to_non_nullable
              as String,
      toAccountNo: null == toAccountNo
          ? _value.toAccountNo
          : toAccountNo // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String,
      declinedAt: null == declinedAt
          ? _value.declinedAt
          : declinedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmTransferModelImplCopyWith<$Res>
    implements $ConfirmTransferModelCopyWith<$Res> {
  factory _$$ConfirmTransferModelImplCopyWith(_$ConfirmTransferModelImpl value,
          $Res Function(_$ConfirmTransferModelImpl) then) =
      __$$ConfirmTransferModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "customer_id") int customerId,
      @JsonKey(name: "fromAccountNo") String fromAccountNo,
      @JsonKey(name: "toAccountNo") String toAccountNo,
      @JsonKey(name: "amount") int amount,
      @JsonKey(name: "currency_code") String currencyCode,
      @JsonKey(name: "note") String note,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "completed_at") String completedAt,
      @JsonKey(name: "declined_at") String declinedAt,
      @JsonKey(name: "created_at") String createdAt});
}

/// @nodoc
class __$$ConfirmTransferModelImplCopyWithImpl<$Res>
    extends _$ConfirmTransferModelCopyWithImpl<$Res, _$ConfirmTransferModelImpl>
    implements _$$ConfirmTransferModelImplCopyWith<$Res> {
  __$$ConfirmTransferModelImplCopyWithImpl(_$ConfirmTransferModelImpl _value,
      $Res Function(_$ConfirmTransferModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? fromAccountNo = null,
    Object? toAccountNo = null,
    Object? amount = null,
    Object? currencyCode = null,
    Object? note = null,
    Object? status = null,
    Object? completedAt = null,
    Object? declinedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$ConfirmTransferModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      fromAccountNo: null == fromAccountNo
          ? _value.fromAccountNo
          : fromAccountNo // ignore: cast_nullable_to_non_nullable
              as String,
      toAccountNo: null == toAccountNo
          ? _value.toAccountNo
          : toAccountNo // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String,
      declinedAt: null == declinedAt
          ? _value.declinedAt
          : declinedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmTransferModelImpl implements _ConfirmTransferModel {
  _$ConfirmTransferModelImpl(
      {this.id = 0,
      @JsonKey(name: "customer_id") this.customerId = 0,
      @JsonKey(name: "fromAccountNo") this.fromAccountNo = "",
      @JsonKey(name: "toAccountNo") this.toAccountNo = "",
      @JsonKey(name: "amount") this.amount = 0,
      @JsonKey(name: "currency_code") this.currencyCode = "",
      @JsonKey(name: "note") this.note = "",
      @JsonKey(name: "status") this.status = "",
      @JsonKey(name: "completed_at") this.completedAt = "",
      @JsonKey(name: "declined_at") this.declinedAt = "",
      @JsonKey(name: "created_at") this.createdAt = ""});

  factory _$ConfirmTransferModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmTransferModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: "customer_id")
  final int customerId;
  @override
  @JsonKey(name: "fromAccountNo")
  final String fromAccountNo;
  @override
  @JsonKey(name: "toAccountNo")
  final String toAccountNo;
  @override
  @JsonKey(name: "amount")
  final int amount;
  @override
  @JsonKey(name: "currency_code")
  final String currencyCode;
  @override
  @JsonKey(name: "note")
  final String note;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "completed_at")
  final String completedAt;
  @override
  @JsonKey(name: "declined_at")
  final String declinedAt;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;

  @override
  String toString() {
    return 'ConfirmTransferModel(id: $id, customerId: $customerId, fromAccountNo: $fromAccountNo, toAccountNo: $toAccountNo, amount: $amount, currencyCode: $currencyCode, note: $note, status: $status, completedAt: $completedAt, declinedAt: $declinedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmTransferModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.fromAccountNo, fromAccountNo) ||
                other.fromAccountNo == fromAccountNo) &&
            (identical(other.toAccountNo, toAccountNo) ||
                other.toAccountNo == toAccountNo) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.declinedAt, declinedAt) ||
                other.declinedAt == declinedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      customerId,
      fromAccountNo,
      toAccountNo,
      amount,
      currencyCode,
      note,
      status,
      completedAt,
      declinedAt,
      createdAt);

  /// Create a copy of ConfirmTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmTransferModelImplCopyWith<_$ConfirmTransferModelImpl>
      get copyWith =>
          __$$ConfirmTransferModelImplCopyWithImpl<_$ConfirmTransferModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmTransferModelImplToJson(
      this,
    );
  }
}

abstract class _ConfirmTransferModel implements ConfirmTransferModel {
  factory _ConfirmTransferModel(
          {final int id,
          @JsonKey(name: "customer_id") final int customerId,
          @JsonKey(name: "fromAccountNo") final String fromAccountNo,
          @JsonKey(name: "toAccountNo") final String toAccountNo,
          @JsonKey(name: "amount") final int amount,
          @JsonKey(name: "currency_code") final String currencyCode,
          @JsonKey(name: "note") final String note,
          @JsonKey(name: "status") final String status,
          @JsonKey(name: "completed_at") final String completedAt,
          @JsonKey(name: "declined_at") final String declinedAt,
          @JsonKey(name: "created_at") final String createdAt}) =
      _$ConfirmTransferModelImpl;

  factory _ConfirmTransferModel.fromJson(Map<String, dynamic> json) =
      _$ConfirmTransferModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "customer_id")
  int get customerId;
  @override
  @JsonKey(name: "fromAccountNo")
  String get fromAccountNo;
  @override
  @JsonKey(name: "toAccountNo")
  String get toAccountNo;
  @override
  @JsonKey(name: "amount")
  int get amount;
  @override
  @JsonKey(name: "currency_code")
  String get currencyCode;
  @override
  @JsonKey(name: "note")
  String get note;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "completed_at")
  String get completedAt;
  @override
  @JsonKey(name: "declined_at")
  String get declinedAt;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;

  /// Create a copy of ConfirmTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmTransferModelImplCopyWith<_$ConfirmTransferModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
