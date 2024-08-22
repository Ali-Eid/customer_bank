// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestCardModel _$RequestCardModelFromJson(Map<String, dynamic> json) {
  return _RequestCardModel.fromJson(json);
}

/// @nodoc
mixin _$RequestCardModel {
  @JsonKey(name: "account_id")
  int get accountId => throw _privateConstructorUsedError;
  @JsonKey(name: "beneficiary_name")
  String get beneficiaryName => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "withdrawal_value_id")
  int get withdrawalValueId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCardModelCopyWith<RequestCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCardModelCopyWith<$Res> {
  factory $RequestCardModelCopyWith(
          RequestCardModel value, $Res Function(RequestCardModel) then) =
      _$RequestCardModelCopyWithImpl<$Res, RequestCardModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "account_id") int accountId,
      @JsonKey(name: "beneficiary_name") String beneficiaryName,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "withdrawal_value_id") int withdrawalValueId});
}

/// @nodoc
class _$RequestCardModelCopyWithImpl<$Res, $Val extends RequestCardModel>
    implements $RequestCardModelCopyWith<$Res> {
  _$RequestCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? beneficiaryName = null,
    Object? type = null,
    Object? withdrawalValueId = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      beneficiaryName: null == beneficiaryName
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      withdrawalValueId: null == withdrawalValueId
          ? _value.withdrawalValueId
          : withdrawalValueId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestCardModelImplCopyWith<$Res>
    implements $RequestCardModelCopyWith<$Res> {
  factory _$$RequestCardModelImplCopyWith(_$RequestCardModelImpl value,
          $Res Function(_$RequestCardModelImpl) then) =
      __$$RequestCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "account_id") int accountId,
      @JsonKey(name: "beneficiary_name") String beneficiaryName,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "withdrawal_value_id") int withdrawalValueId});
}

/// @nodoc
class __$$RequestCardModelImplCopyWithImpl<$Res>
    extends _$RequestCardModelCopyWithImpl<$Res, _$RequestCardModelImpl>
    implements _$$RequestCardModelImplCopyWith<$Res> {
  __$$RequestCardModelImplCopyWithImpl(_$RequestCardModelImpl _value,
      $Res Function(_$RequestCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? beneficiaryName = null,
    Object? type = null,
    Object? withdrawalValueId = null,
  }) {
    return _then(_$RequestCardModelImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      beneficiaryName: null == beneficiaryName
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      withdrawalValueId: null == withdrawalValueId
          ? _value.withdrawalValueId
          : withdrawalValueId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestCardModelImpl implements _RequestCardModel {
  _$RequestCardModelImpl(
      {@JsonKey(name: "account_id") required this.accountId,
      @JsonKey(name: "beneficiary_name") required this.beneficiaryName,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "withdrawal_value_id") required this.withdrawalValueId});

  factory _$RequestCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestCardModelImplFromJson(json);

  @override
  @JsonKey(name: "account_id")
  final int accountId;
  @override
  @JsonKey(name: "beneficiary_name")
  final String beneficiaryName;
  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "withdrawal_value_id")
  final int withdrawalValueId;

  @override
  String toString() {
    return 'RequestCardModel(accountId: $accountId, beneficiaryName: $beneficiaryName, type: $type, withdrawalValueId: $withdrawalValueId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCardModelImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.beneficiaryName, beneficiaryName) ||
                other.beneficiaryName == beneficiaryName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.withdrawalValueId, withdrawalValueId) ||
                other.withdrawalValueId == withdrawalValueId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, accountId, beneficiaryName, type, withdrawalValueId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCardModelImplCopyWith<_$RequestCardModelImpl> get copyWith =>
      __$$RequestCardModelImplCopyWithImpl<_$RequestCardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestCardModelImplToJson(
      this,
    );
  }
}

abstract class _RequestCardModel implements RequestCardModel {
  factory _RequestCardModel(
      {@JsonKey(name: "account_id") required final int accountId,
      @JsonKey(name: "beneficiary_name") required final String beneficiaryName,
      @JsonKey(name: "type") required final String type,
      @JsonKey(name: "withdrawal_value_id")
      required final int withdrawalValueId}) = _$RequestCardModelImpl;

  factory _RequestCardModel.fromJson(Map<String, dynamic> json) =
      _$RequestCardModelImpl.fromJson;

  @override
  @JsonKey(name: "account_id")
  int get accountId;
  @override
  @JsonKey(name: "beneficiary_name")
  String get beneficiaryName;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "withdrawal_value_id")
  int get withdrawalValueId;
  @override
  @JsonKey(ignore: true)
  _$$RequestCardModelImplCopyWith<_$RequestCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
