// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_confirm_transfer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputConfirmTransferModel _$InputConfirmTransferModelFromJson(
    Map<String, dynamic> json) {
  return _InputConfirmTransferModel.fromJson(json);
}

/// @nodoc
mixin _$InputConfirmTransferModel {
  @JsonKey(name: "otp")
  String? get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "ref_id")
  String get refId => throw _privateConstructorUsedError;

  /// Serializes this InputConfirmTransferModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputConfirmTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputConfirmTransferModelCopyWith<InputConfirmTransferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputConfirmTransferModelCopyWith<$Res> {
  factory $InputConfirmTransferModelCopyWith(InputConfirmTransferModel value,
          $Res Function(InputConfirmTransferModel) then) =
      _$InputConfirmTransferModelCopyWithImpl<$Res, InputConfirmTransferModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "otp") String? otp,
      @JsonKey(name: "ref_id") String refId});
}

/// @nodoc
class _$InputConfirmTransferModelCopyWithImpl<$Res,
        $Val extends InputConfirmTransferModel>
    implements $InputConfirmTransferModelCopyWith<$Res> {
  _$InputConfirmTransferModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputConfirmTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = freezed,
    Object? refId = null,
  }) {
    return _then(_value.copyWith(
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputConfirmTransferModelImplCopyWith<$Res>
    implements $InputConfirmTransferModelCopyWith<$Res> {
  factory _$$InputConfirmTransferModelImplCopyWith(
          _$InputConfirmTransferModelImpl value,
          $Res Function(_$InputConfirmTransferModelImpl) then) =
      __$$InputConfirmTransferModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "otp") String? otp,
      @JsonKey(name: "ref_id") String refId});
}

/// @nodoc
class __$$InputConfirmTransferModelImplCopyWithImpl<$Res>
    extends _$InputConfirmTransferModelCopyWithImpl<$Res,
        _$InputConfirmTransferModelImpl>
    implements _$$InputConfirmTransferModelImplCopyWith<$Res> {
  __$$InputConfirmTransferModelImplCopyWithImpl(
      _$InputConfirmTransferModelImpl _value,
      $Res Function(_$InputConfirmTransferModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputConfirmTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = freezed,
    Object? refId = null,
  }) {
    return _then(_$InputConfirmTransferModelImpl(
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputConfirmTransferModelImpl implements _InputConfirmTransferModel {
  _$InputConfirmTransferModelImpl(
      {@JsonKey(name: "otp") this.otp,
      @JsonKey(name: "ref_id") required this.refId});

  factory _$InputConfirmTransferModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputConfirmTransferModelImplFromJson(json);

  @override
  @JsonKey(name: "otp")
  final String? otp;
  @override
  @JsonKey(name: "ref_id")
  final String refId;

  @override
  String toString() {
    return 'InputConfirmTransferModel(otp: $otp, refId: $refId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputConfirmTransferModelImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.refId, refId) || other.refId == refId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, otp, refId);

  /// Create a copy of InputConfirmTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputConfirmTransferModelImplCopyWith<_$InputConfirmTransferModelImpl>
      get copyWith => __$$InputConfirmTransferModelImplCopyWithImpl<
          _$InputConfirmTransferModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputConfirmTransferModelImplToJson(
      this,
    );
  }
}

abstract class _InputConfirmTransferModel implements InputConfirmTransferModel {
  factory _InputConfirmTransferModel(
          {@JsonKey(name: "otp") final String? otp,
          @JsonKey(name: "ref_id") required final String refId}) =
      _$InputConfirmTransferModelImpl;

  factory _InputConfirmTransferModel.fromJson(Map<String, dynamic> json) =
      _$InputConfirmTransferModelImpl.fromJson;

  @override
  @JsonKey(name: "otp")
  String? get otp;
  @override
  @JsonKey(name: "ref_id")
  String get refId;

  /// Create a copy of InputConfirmTransferModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputConfirmTransferModelImplCopyWith<_$InputConfirmTransferModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
