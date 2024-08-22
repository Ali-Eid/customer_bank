// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputLoginModel _$InputLoginModelFromJson(Map<String, dynamic> json) {
  return _InputLoginModel.fromJson(json);
}

/// @nodoc
mixin _$InputLoginModel {
// ignore: invalid_annotation_target
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputLoginModelCopyWith<InputLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputLoginModelCopyWith<$Res> {
  factory $InputLoginModelCopyWith(
          InputLoginModel value, $Res Function(InputLoginModel) then) =
      _$InputLoginModelCopyWithImpl<$Res, InputLoginModel>;
  @useResult
  $Res call({@JsonKey(name: "phone_number") String phoneNumber, String otp});
}

/// @nodoc
class _$InputLoginModelCopyWithImpl<$Res, $Val extends InputLoginModel>
    implements $InputLoginModelCopyWith<$Res> {
  _$InputLoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputLoginModelImplCopyWith<$Res>
    implements $InputLoginModelCopyWith<$Res> {
  factory _$$InputLoginModelImplCopyWith(_$InputLoginModelImpl value,
          $Res Function(_$InputLoginModelImpl) then) =
      __$$InputLoginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "phone_number") String phoneNumber, String otp});
}

/// @nodoc
class __$$InputLoginModelImplCopyWithImpl<$Res>
    extends _$InputLoginModelCopyWithImpl<$Res, _$InputLoginModelImpl>
    implements _$$InputLoginModelImplCopyWith<$Res> {
  __$$InputLoginModelImplCopyWithImpl(
      _$InputLoginModelImpl _value, $Res Function(_$InputLoginModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
  }) {
    return _then(_$InputLoginModelImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputLoginModelImpl implements _InputLoginModel {
  const _$InputLoginModelImpl(
      {@JsonKey(name: "phone_number") required this.phoneNumber,
      required this.otp});

  factory _$InputLoginModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputLoginModelImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  final String otp;

  @override
  String toString() {
    return 'InputLoginModel(phoneNumber: $phoneNumber, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputLoginModelImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputLoginModelImplCopyWith<_$InputLoginModelImpl> get copyWith =>
      __$$InputLoginModelImplCopyWithImpl<_$InputLoginModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputLoginModelImplToJson(
      this,
    );
  }
}

abstract class _InputLoginModel implements InputLoginModel {
  const factory _InputLoginModel(
      {@JsonKey(name: "phone_number") required final String phoneNumber,
      required final String otp}) = _$InputLoginModelImpl;

  factory _InputLoginModel.fromJson(Map<String, dynamic> json) =
      _$InputLoginModelImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$InputLoginModelImplCopyWith<_$InputLoginModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
