// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_otp_change_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfirmOtpChangePasswordModel _$ConfirmOtpChangePasswordModelFromJson(
    Map<String, dynamic> json) {
  return _ConfirmOtpChangePasswordModel.fromJson(json);
}

/// @nodoc
mixin _$ConfirmOtpChangePasswordModel {
// ignore: invalid_annotation_target
  @JsonKey(name: "reference_id")
  String get referenceId => throw _privateConstructorUsedError;

  /// Serializes this ConfirmOtpChangePasswordModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmOtpChangePasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmOtpChangePasswordModelCopyWith<ConfirmOtpChangePasswordModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmOtpChangePasswordModelCopyWith<$Res> {
  factory $ConfirmOtpChangePasswordModelCopyWith(
          ConfirmOtpChangePasswordModel value,
          $Res Function(ConfirmOtpChangePasswordModel) then) =
      _$ConfirmOtpChangePasswordModelCopyWithImpl<$Res,
          ConfirmOtpChangePasswordModel>;
  @useResult
  $Res call({@JsonKey(name: "reference_id") String referenceId});
}

/// @nodoc
class _$ConfirmOtpChangePasswordModelCopyWithImpl<$Res,
        $Val extends ConfirmOtpChangePasswordModel>
    implements $ConfirmOtpChangePasswordModelCopyWith<$Res> {
  _$ConfirmOtpChangePasswordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmOtpChangePasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceId = null,
  }) {
    return _then(_value.copyWith(
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmOtpChangePasswordModelImplCopyWith<$Res>
    implements $ConfirmOtpChangePasswordModelCopyWith<$Res> {
  factory _$$ConfirmOtpChangePasswordModelImplCopyWith(
          _$ConfirmOtpChangePasswordModelImpl value,
          $Res Function(_$ConfirmOtpChangePasswordModelImpl) then) =
      __$$ConfirmOtpChangePasswordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "reference_id") String referenceId});
}

/// @nodoc
class __$$ConfirmOtpChangePasswordModelImplCopyWithImpl<$Res>
    extends _$ConfirmOtpChangePasswordModelCopyWithImpl<$Res,
        _$ConfirmOtpChangePasswordModelImpl>
    implements _$$ConfirmOtpChangePasswordModelImplCopyWith<$Res> {
  __$$ConfirmOtpChangePasswordModelImplCopyWithImpl(
      _$ConfirmOtpChangePasswordModelImpl _value,
      $Res Function(_$ConfirmOtpChangePasswordModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmOtpChangePasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceId = null,
  }) {
    return _then(_$ConfirmOtpChangePasswordModelImpl(
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmOtpChangePasswordModelImpl
    implements _ConfirmOtpChangePasswordModel {
  _$ConfirmOtpChangePasswordModelImpl(
      {@JsonKey(name: "reference_id") this.referenceId = ""});

  factory _$ConfirmOtpChangePasswordModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConfirmOtpChangePasswordModelImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "reference_id")
  final String referenceId;

  @override
  String toString() {
    return 'ConfirmOtpChangePasswordModel(referenceId: $referenceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmOtpChangePasswordModelImpl &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, referenceId);

  /// Create a copy of ConfirmOtpChangePasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmOtpChangePasswordModelImplCopyWith<
          _$ConfirmOtpChangePasswordModelImpl>
      get copyWith => __$$ConfirmOtpChangePasswordModelImplCopyWithImpl<
          _$ConfirmOtpChangePasswordModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmOtpChangePasswordModelImplToJson(
      this,
    );
  }
}

abstract class _ConfirmOtpChangePasswordModel
    implements ConfirmOtpChangePasswordModel {
  factory _ConfirmOtpChangePasswordModel(
          {@JsonKey(name: "reference_id") final String referenceId}) =
      _$ConfirmOtpChangePasswordModelImpl;

  factory _ConfirmOtpChangePasswordModel.fromJson(Map<String, dynamic> json) =
      _$ConfirmOtpChangePasswordModelImpl.fromJson;

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "reference_id")
  String get referenceId;

  /// Create a copy of ConfirmOtpChangePasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmOtpChangePasswordModelImplCopyWith<
          _$ConfirmOtpChangePasswordModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
