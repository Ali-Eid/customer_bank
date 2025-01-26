// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_change_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputChangePasswordModel _$InputChangePasswordModelFromJson(
    Map<String, dynamic> json) {
  return _InputChangePasswordModel.fromJson(json);
}

/// @nodoc
mixin _$InputChangePasswordModel {
  @JsonKey(name: "international_code")
  String get internationalCode => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputChangePasswordModelCopyWith<InputChangePasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputChangePasswordModelCopyWith<$Res> {
  factory $InputChangePasswordModelCopyWith(InputChangePasswordModel value,
          $Res Function(InputChangePasswordModel) then) =
      _$InputChangePasswordModelCopyWithImpl<$Res, InputChangePasswordModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "international_code") String internationalCode,
      @JsonKey(name: "phone_number") String phoneNumber});
}

/// @nodoc
class _$InputChangePasswordModelCopyWithImpl<$Res,
        $Val extends InputChangePasswordModel>
    implements $InputChangePasswordModelCopyWith<$Res> {
  _$InputChangePasswordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? internationalCode = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      internationalCode: null == internationalCode
          ? _value.internationalCode
          : internationalCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputChangePasswordModelImplCopyWith<$Res>
    implements $InputChangePasswordModelCopyWith<$Res> {
  factory _$$InputChangePasswordModelImplCopyWith(
          _$InputChangePasswordModelImpl value,
          $Res Function(_$InputChangePasswordModelImpl) then) =
      __$$InputChangePasswordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "international_code") String internationalCode,
      @JsonKey(name: "phone_number") String phoneNumber});
}

/// @nodoc
class __$$InputChangePasswordModelImplCopyWithImpl<$Res>
    extends _$InputChangePasswordModelCopyWithImpl<$Res,
        _$InputChangePasswordModelImpl>
    implements _$$InputChangePasswordModelImplCopyWith<$Res> {
  __$$InputChangePasswordModelImplCopyWithImpl(
      _$InputChangePasswordModelImpl _value,
      $Res Function(_$InputChangePasswordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? internationalCode = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$InputChangePasswordModelImpl(
      internationalCode: null == internationalCode
          ? _value.internationalCode
          : internationalCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputChangePasswordModelImpl implements _InputChangePasswordModel {
  _$InputChangePasswordModelImpl(
      {@JsonKey(name: "international_code") required this.internationalCode,
      @JsonKey(name: "phone_number") required this.phoneNumber});

  factory _$InputChangePasswordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputChangePasswordModelImplFromJson(json);

  @override
  @JsonKey(name: "international_code")
  final String internationalCode;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;

  @override
  String toString() {
    return 'InputChangePasswordModel(internationalCode: $internationalCode, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputChangePasswordModelImpl &&
            (identical(other.internationalCode, internationalCode) ||
                other.internationalCode == internationalCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, internationalCode, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputChangePasswordModelImplCopyWith<_$InputChangePasswordModelImpl>
      get copyWith => __$$InputChangePasswordModelImplCopyWithImpl<
          _$InputChangePasswordModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputChangePasswordModelImplToJson(
      this,
    );
  }
}

abstract class _InputChangePasswordModel implements InputChangePasswordModel {
  factory _InputChangePasswordModel(
          {@JsonKey(name: "international_code")
          required final String internationalCode,
          @JsonKey(name: "phone_number") required final String phoneNumber}) =
      _$InputChangePasswordModelImpl;

  factory _InputChangePasswordModel.fromJson(Map<String, dynamic> json) =
      _$InputChangePasswordModelImpl.fromJson;

  @override
  @JsonKey(name: "international_code")
  String get internationalCode;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$InputChangePasswordModelImplCopyWith<_$InputChangePasswordModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
