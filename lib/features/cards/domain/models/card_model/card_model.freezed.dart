// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardModel _$CardModelFromJson(Map<String, dynamic> json) {
  return _CardModel.fromJson(json);
}

/// @nodoc
mixin _$CardModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "card_number")
  String get cardNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "beneficiary_name")
  String get beneficiaryName => throw _privateConstructorUsedError;
  @JsonKey(name: "processed_at")
  String? get processedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "ready_at")
  String get readyAt => throw _privateConstructorUsedError;
  @JsonKey(name: "expiry_at")
  String get expiry_At => throw _privateConstructorUsedError;
  @JsonKey(name: "received_at")
  String get receivedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "inactive_at")
  String? get inactiveAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_daily_withdrawal")
  int get maximumDailyWithdrawal => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardModelCopyWith<CardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardModelCopyWith<$Res> {
  factory $CardModelCopyWith(CardModel value, $Res Function(CardModel) then) =
      _$CardModelCopyWithImpl<$Res, CardModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "card_number") String cardNumber,
      @JsonKey(name: "beneficiary_name") String beneficiaryName,
      @JsonKey(name: "processed_at") String? processedAt,
      @JsonKey(name: "ready_at") String readyAt,
      @JsonKey(name: "expiry_at") String expiry_At,
      @JsonKey(name: "received_at") String receivedAt,
      @JsonKey(name: "inactive_at") String? inactiveAt,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "updated_at") String updatedAt,
      @JsonKey(name: "maximum_daily_withdrawal") int maximumDailyWithdrawal,
      String type,
      String status,
      num amount});
}

/// @nodoc
class _$CardModelCopyWithImpl<$Res, $Val extends CardModel>
    implements $CardModelCopyWith<$Res> {
  _$CardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardNumber = null,
    Object? beneficiaryName = null,
    Object? processedAt = freezed,
    Object? readyAt = null,
    Object? expiry_At = null,
    Object? receivedAt = null,
    Object? inactiveAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? maximumDailyWithdrawal = null,
    Object? type = null,
    Object? status = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      beneficiaryName: null == beneficiaryName
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      readyAt: null == readyAt
          ? _value.readyAt
          : readyAt // ignore: cast_nullable_to_non_nullable
              as String,
      expiry_At: null == expiry_At
          ? _value.expiry_At
          : expiry_At // ignore: cast_nullable_to_non_nullable
              as String,
      receivedAt: null == receivedAt
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as String,
      inactiveAt: freezed == inactiveAt
          ? _value.inactiveAt
          : inactiveAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      maximumDailyWithdrawal: null == maximumDailyWithdrawal
          ? _value.maximumDailyWithdrawal
          : maximumDailyWithdrawal // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardModelImplCopyWith<$Res>
    implements $CardModelCopyWith<$Res> {
  factory _$$CardModelImplCopyWith(
          _$CardModelImpl value, $Res Function(_$CardModelImpl) then) =
      __$$CardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "card_number") String cardNumber,
      @JsonKey(name: "beneficiary_name") String beneficiaryName,
      @JsonKey(name: "processed_at") String? processedAt,
      @JsonKey(name: "ready_at") String readyAt,
      @JsonKey(name: "expiry_at") String expiry_At,
      @JsonKey(name: "received_at") String receivedAt,
      @JsonKey(name: "inactive_at") String? inactiveAt,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "updated_at") String updatedAt,
      @JsonKey(name: "maximum_daily_withdrawal") int maximumDailyWithdrawal,
      String type,
      String status,
      num amount});
}

/// @nodoc
class __$$CardModelImplCopyWithImpl<$Res>
    extends _$CardModelCopyWithImpl<$Res, _$CardModelImpl>
    implements _$$CardModelImplCopyWith<$Res> {
  __$$CardModelImplCopyWithImpl(
      _$CardModelImpl _value, $Res Function(_$CardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardNumber = null,
    Object? beneficiaryName = null,
    Object? processedAt = freezed,
    Object? readyAt = null,
    Object? expiry_At = null,
    Object? receivedAt = null,
    Object? inactiveAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? maximumDailyWithdrawal = null,
    Object? type = null,
    Object? status = null,
    Object? amount = null,
  }) {
    return _then(_$CardModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      beneficiaryName: null == beneficiaryName
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      readyAt: null == readyAt
          ? _value.readyAt
          : readyAt // ignore: cast_nullable_to_non_nullable
              as String,
      expiry_At: null == expiry_At
          ? _value.expiry_At
          : expiry_At // ignore: cast_nullable_to_non_nullable
              as String,
      receivedAt: null == receivedAt
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as String,
      inactiveAt: freezed == inactiveAt
          ? _value.inactiveAt
          : inactiveAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      maximumDailyWithdrawal: null == maximumDailyWithdrawal
          ? _value.maximumDailyWithdrawal
          : maximumDailyWithdrawal // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardModelImpl implements _CardModel {
  _$CardModelImpl(
      {this.id = 0,
      @JsonKey(name: "card_number") this.cardNumber = "",
      @JsonKey(name: "beneficiary_name") this.beneficiaryName = "",
      @JsonKey(name: "processed_at") this.processedAt,
      @JsonKey(name: "ready_at") this.readyAt = "",
      @JsonKey(name: "expiry_at") this.expiry_At = "",
      @JsonKey(name: "received_at") this.receivedAt = "",
      @JsonKey(name: "inactive_at") this.inactiveAt,
      @JsonKey(name: "created_at") this.createdAt = "",
      @JsonKey(name: "updated_at") this.updatedAt = "",
      @JsonKey(name: "maximum_daily_withdrawal")
      this.maximumDailyWithdrawal = 0,
      this.type = "",
      this.status = "",
      this.amount = 0});

  factory _$CardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: "card_number")
  final String cardNumber;
  @override
  @JsonKey(name: "beneficiary_name")
  final String beneficiaryName;
  @override
  @JsonKey(name: "processed_at")
  final String? processedAt;
  @override
  @JsonKey(name: "ready_at")
  final String readyAt;
  @override
  @JsonKey(name: "expiry_at")
  final String expiry_At;
  @override
  @JsonKey(name: "received_at")
  final String receivedAt;
  @override
  @JsonKey(name: "inactive_at")
  final String? inactiveAt;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String updatedAt;
  @override
  @JsonKey(name: "maximum_daily_withdrawal")
  final int maximumDailyWithdrawal;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final num amount;

  @override
  String toString() {
    return 'CardModel(id: $id, cardNumber: $cardNumber, beneficiaryName: $beneficiaryName, processedAt: $processedAt, readyAt: $readyAt, expiry_At: $expiry_At, receivedAt: $receivedAt, inactiveAt: $inactiveAt, createdAt: $createdAt, updatedAt: $updatedAt, maximumDailyWithdrawal: $maximumDailyWithdrawal, type: $type, status: $status, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.beneficiaryName, beneficiaryName) ||
                other.beneficiaryName == beneficiaryName) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt) &&
            (identical(other.readyAt, readyAt) || other.readyAt == readyAt) &&
            (identical(other.expiry_At, expiry_At) ||
                other.expiry_At == expiry_At) &&
            (identical(other.receivedAt, receivedAt) ||
                other.receivedAt == receivedAt) &&
            (identical(other.inactiveAt, inactiveAt) ||
                other.inactiveAt == inactiveAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.maximumDailyWithdrawal, maximumDailyWithdrawal) ||
                other.maximumDailyWithdrawal == maximumDailyWithdrawal) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      cardNumber,
      beneficiaryName,
      processedAt,
      readyAt,
      expiry_At,
      receivedAt,
      inactiveAt,
      createdAt,
      updatedAt,
      maximumDailyWithdrawal,
      type,
      status,
      amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardModelImplCopyWith<_$CardModelImpl> get copyWith =>
      __$$CardModelImplCopyWithImpl<_$CardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardModelImplToJson(
      this,
    );
  }
}

abstract class _CardModel implements CardModel {
  factory _CardModel(
      {final int id,
      @JsonKey(name: "card_number") final String cardNumber,
      @JsonKey(name: "beneficiary_name") final String beneficiaryName,
      @JsonKey(name: "processed_at") final String? processedAt,
      @JsonKey(name: "ready_at") final String readyAt,
      @JsonKey(name: "expiry_at") final String expiry_At,
      @JsonKey(name: "received_at") final String receivedAt,
      @JsonKey(name: "inactive_at") final String? inactiveAt,
      @JsonKey(name: "created_at") final String createdAt,
      @JsonKey(name: "updated_at") final String updatedAt,
      @JsonKey(name: "maximum_daily_withdrawal")
      final int maximumDailyWithdrawal,
      final String type,
      final String status,
      final num amount}) = _$CardModelImpl;

  factory _CardModel.fromJson(Map<String, dynamic> json) =
      _$CardModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "card_number")
  String get cardNumber;
  @override
  @JsonKey(name: "beneficiary_name")
  String get beneficiaryName;
  @override
  @JsonKey(name: "processed_at")
  String? get processedAt;
  @override
  @JsonKey(name: "ready_at")
  String get readyAt;
  @override
  @JsonKey(name: "expiry_at")
  String get expiry_At;
  @override
  @JsonKey(name: "received_at")
  String get receivedAt;
  @override
  @JsonKey(name: "inactive_at")
  String? get inactiveAt;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String get updatedAt;
  @override
  @JsonKey(name: "maximum_daily_withdrawal")
  int get maximumDailyWithdrawal;
  @override
  String get type;
  @override
  String get status;
  @override
  num get amount;
  @override
  @JsonKey(ignore: true)
  _$$CardModelImplCopyWith<_$CardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
