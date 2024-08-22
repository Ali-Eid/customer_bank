// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_increase_withdrawal_value_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestIncreaseWithdrawalValueModel
    _$RequestIncreaseWithdrawalValueModelFromJson(Map<String, dynamic> json) {
  return _RequestIncreaseWithdrawalValueModel.fromJson(json);
}

/// @nodoc
mixin _$RequestIncreaseWithdrawalValueModel {
  @JsonKey(name: "card_id")
  int get cardId => throw _privateConstructorUsedError;
  @JsonKey(name: "withdrawal_value_id")
  int get withdrawalValueId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestIncreaseWithdrawalValueModelCopyWith<
          RequestIncreaseWithdrawalValueModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestIncreaseWithdrawalValueModelCopyWith<$Res> {
  factory $RequestIncreaseWithdrawalValueModelCopyWith(
          RequestIncreaseWithdrawalValueModel value,
          $Res Function(RequestIncreaseWithdrawalValueModel) then) =
      _$RequestIncreaseWithdrawalValueModelCopyWithImpl<$Res,
          RequestIncreaseWithdrawalValueModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "card_id") int cardId,
      @JsonKey(name: "withdrawal_value_id") int withdrawalValueId});
}

/// @nodoc
class _$RequestIncreaseWithdrawalValueModelCopyWithImpl<$Res,
        $Val extends RequestIncreaseWithdrawalValueModel>
    implements $RequestIncreaseWithdrawalValueModelCopyWith<$Res> {
  _$RequestIncreaseWithdrawalValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = null,
    Object? withdrawalValueId = null,
  }) {
    return _then(_value.copyWith(
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      withdrawalValueId: null == withdrawalValueId
          ? _value.withdrawalValueId
          : withdrawalValueId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestIncreaseWithdrawalValueModelImplCopyWith<$Res>
    implements $RequestIncreaseWithdrawalValueModelCopyWith<$Res> {
  factory _$$RequestIncreaseWithdrawalValueModelImplCopyWith(
          _$RequestIncreaseWithdrawalValueModelImpl value,
          $Res Function(_$RequestIncreaseWithdrawalValueModelImpl) then) =
      __$$RequestIncreaseWithdrawalValueModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "card_id") int cardId,
      @JsonKey(name: "withdrawal_value_id") int withdrawalValueId});
}

/// @nodoc
class __$$RequestIncreaseWithdrawalValueModelImplCopyWithImpl<$Res>
    extends _$RequestIncreaseWithdrawalValueModelCopyWithImpl<$Res,
        _$RequestIncreaseWithdrawalValueModelImpl>
    implements _$$RequestIncreaseWithdrawalValueModelImplCopyWith<$Res> {
  __$$RequestIncreaseWithdrawalValueModelImplCopyWithImpl(
      _$RequestIncreaseWithdrawalValueModelImpl _value,
      $Res Function(_$RequestIncreaseWithdrawalValueModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = null,
    Object? withdrawalValueId = null,
  }) {
    return _then(_$RequestIncreaseWithdrawalValueModelImpl(
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      withdrawalValueId: null == withdrawalValueId
          ? _value.withdrawalValueId
          : withdrawalValueId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestIncreaseWithdrawalValueModelImpl
    implements _RequestIncreaseWithdrawalValueModel {
  _$RequestIncreaseWithdrawalValueModelImpl(
      {@JsonKey(name: "card_id") required this.cardId,
      @JsonKey(name: "withdrawal_value_id") required this.withdrawalValueId});

  factory _$RequestIncreaseWithdrawalValueModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestIncreaseWithdrawalValueModelImplFromJson(json);

  @override
  @JsonKey(name: "card_id")
  final int cardId;
  @override
  @JsonKey(name: "withdrawal_value_id")
  final int withdrawalValueId;

  @override
  String toString() {
    return 'RequestIncreaseWithdrawalValueModel(cardId: $cardId, withdrawalValueId: $withdrawalValueId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestIncreaseWithdrawalValueModelImpl &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.withdrawalValueId, withdrawalValueId) ||
                other.withdrawalValueId == withdrawalValueId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cardId, withdrawalValueId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestIncreaseWithdrawalValueModelImplCopyWith<
          _$RequestIncreaseWithdrawalValueModelImpl>
      get copyWith => __$$RequestIncreaseWithdrawalValueModelImplCopyWithImpl<
          _$RequestIncreaseWithdrawalValueModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestIncreaseWithdrawalValueModelImplToJson(
      this,
    );
  }
}

abstract class _RequestIncreaseWithdrawalValueModel
    implements RequestIncreaseWithdrawalValueModel {
  factory _RequestIncreaseWithdrawalValueModel(
          {@JsonKey(name: "card_id") required final int cardId,
          @JsonKey(name: "withdrawal_value_id")
          required final int withdrawalValueId}) =
      _$RequestIncreaseWithdrawalValueModelImpl;

  factory _RequestIncreaseWithdrawalValueModel.fromJson(
          Map<String, dynamic> json) =
      _$RequestIncreaseWithdrawalValueModelImpl.fromJson;

  @override
  @JsonKey(name: "card_id")
  int get cardId;
  @override
  @JsonKey(name: "withdrawal_value_id")
  int get withdrawalValueId;
  @override
  @JsonKey(ignore: true)
  _$$RequestIncreaseWithdrawalValueModelImplCopyWith<
          _$RequestIncreaseWithdrawalValueModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
