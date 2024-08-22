// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_inactive_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestInactiveCardModel _$RequestInactiveCardModelFromJson(
    Map<String, dynamic> json) {
  return _RequestInactiveCardModel.fromJson(json);
}

/// @nodoc
mixin _$RequestInactiveCardModel {
// ignore: invalid_annotation_target
  @JsonKey(name: "card_id")
  int get cardId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestInactiveCardModelCopyWith<RequestInactiveCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestInactiveCardModelCopyWith<$Res> {
  factory $RequestInactiveCardModelCopyWith(RequestInactiveCardModel value,
          $Res Function(RequestInactiveCardModel) then) =
      _$RequestInactiveCardModelCopyWithImpl<$Res, RequestInactiveCardModel>;
  @useResult
  $Res call({@JsonKey(name: "card_id") int cardId, String message});
}

/// @nodoc
class _$RequestInactiveCardModelCopyWithImpl<$Res,
        $Val extends RequestInactiveCardModel>
    implements $RequestInactiveCardModelCopyWith<$Res> {
  _$RequestInactiveCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestInactiveCardModelImplCopyWith<$Res>
    implements $RequestInactiveCardModelCopyWith<$Res> {
  factory _$$RequestInactiveCardModelImplCopyWith(
          _$RequestInactiveCardModelImpl value,
          $Res Function(_$RequestInactiveCardModelImpl) then) =
      __$$RequestInactiveCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "card_id") int cardId, String message});
}

/// @nodoc
class __$$RequestInactiveCardModelImplCopyWithImpl<$Res>
    extends _$RequestInactiveCardModelCopyWithImpl<$Res,
        _$RequestInactiveCardModelImpl>
    implements _$$RequestInactiveCardModelImplCopyWith<$Res> {
  __$$RequestInactiveCardModelImplCopyWithImpl(
      _$RequestInactiveCardModelImpl _value,
      $Res Function(_$RequestInactiveCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = null,
    Object? message = null,
  }) {
    return _then(_$RequestInactiveCardModelImpl(
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestInactiveCardModelImpl implements _RequestInactiveCardModel {
  _$RequestInactiveCardModelImpl(
      {@JsonKey(name: "card_id") required this.cardId, required this.message});

  factory _$RequestInactiveCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestInactiveCardModelImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "card_id")
  final int cardId;
  @override
  final String message;

  @override
  String toString() {
    return 'RequestInactiveCardModel(cardId: $cardId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestInactiveCardModelImpl &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cardId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestInactiveCardModelImplCopyWith<_$RequestInactiveCardModelImpl>
      get copyWith => __$$RequestInactiveCardModelImplCopyWithImpl<
          _$RequestInactiveCardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestInactiveCardModelImplToJson(
      this,
    );
  }
}

abstract class _RequestInactiveCardModel implements RequestInactiveCardModel {
  factory _RequestInactiveCardModel(
      {@JsonKey(name: "card_id") required final int cardId,
      required final String message}) = _$RequestInactiveCardModelImpl;

  factory _RequestInactiveCardModel.fromJson(Map<String, dynamic> json) =
      _$RequestInactiveCardModelImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "card_id")
  int get cardId;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$RequestInactiveCardModelImplCopyWith<_$RequestInactiveCardModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
