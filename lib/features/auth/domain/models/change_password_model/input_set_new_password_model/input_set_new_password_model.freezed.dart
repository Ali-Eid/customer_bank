// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_set_new_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputSetNewPasswordModel _$InputSetNewPasswordModelFromJson(
    Map<String, dynamic> json) {
  return _InputSetNewPasswordModel.fromJson(json);
}

/// @nodoc
mixin _$InputSetNewPasswordModel {
  @JsonKey(name: "password")
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "confirm_password")
  String get confirmPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "reference_id")
  String get referenceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputSetNewPasswordModelCopyWith<InputSetNewPasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputSetNewPasswordModelCopyWith<$Res> {
  factory $InputSetNewPasswordModelCopyWith(InputSetNewPasswordModel value,
          $Res Function(InputSetNewPasswordModel) then) =
      _$InputSetNewPasswordModelCopyWithImpl<$Res, InputSetNewPasswordModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "password") String password,
      @JsonKey(name: "confirm_password") String confirmPassword,
      @JsonKey(name: "reference_id") String referenceId});
}

/// @nodoc
class _$InputSetNewPasswordModelCopyWithImpl<$Res,
        $Val extends InputSetNewPasswordModel>
    implements $InputSetNewPasswordModelCopyWith<$Res> {
  _$InputSetNewPasswordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? confirmPassword = null,
    Object? referenceId = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputSetNewPasswordModelImplCopyWith<$Res>
    implements $InputSetNewPasswordModelCopyWith<$Res> {
  factory _$$InputSetNewPasswordModelImplCopyWith(
          _$InputSetNewPasswordModelImpl value,
          $Res Function(_$InputSetNewPasswordModelImpl) then) =
      __$$InputSetNewPasswordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "password") String password,
      @JsonKey(name: "confirm_password") String confirmPassword,
      @JsonKey(name: "reference_id") String referenceId});
}

/// @nodoc
class __$$InputSetNewPasswordModelImplCopyWithImpl<$Res>
    extends _$InputSetNewPasswordModelCopyWithImpl<$Res,
        _$InputSetNewPasswordModelImpl>
    implements _$$InputSetNewPasswordModelImplCopyWith<$Res> {
  __$$InputSetNewPasswordModelImplCopyWithImpl(
      _$InputSetNewPasswordModelImpl _value,
      $Res Function(_$InputSetNewPasswordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? confirmPassword = null,
    Object? referenceId = null,
  }) {
    return _then(_$InputSetNewPasswordModelImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputSetNewPasswordModelImpl implements _InputSetNewPasswordModel {
  _$InputSetNewPasswordModelImpl(
      {@JsonKey(name: "password") required this.password,
      @JsonKey(name: "confirm_password") required this.confirmPassword,
      @JsonKey(name: "reference_id") required this.referenceId});

  factory _$InputSetNewPasswordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputSetNewPasswordModelImplFromJson(json);

  @override
  @JsonKey(name: "password")
  final String password;
  @override
  @JsonKey(name: "confirm_password")
  final String confirmPassword;
  @override
  @JsonKey(name: "reference_id")
  final String referenceId;

  @override
  String toString() {
    return 'InputSetNewPasswordModel(password: $password, confirmPassword: $confirmPassword, referenceId: $referenceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputSetNewPasswordModelImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, password, confirmPassword, referenceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputSetNewPasswordModelImplCopyWith<_$InputSetNewPasswordModelImpl>
      get copyWith => __$$InputSetNewPasswordModelImplCopyWithImpl<
          _$InputSetNewPasswordModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputSetNewPasswordModelImplToJson(
      this,
    );
  }
}

abstract class _InputSetNewPasswordModel implements InputSetNewPasswordModel {
  factory _InputSetNewPasswordModel(
      {@JsonKey(name: "password") required final String password,
      @JsonKey(name: "confirm_password") required final String confirmPassword,
      @JsonKey(name: "reference_id")
      required final String referenceId}) = _$InputSetNewPasswordModelImpl;

  factory _InputSetNewPasswordModel.fromJson(Map<String, dynamic> json) =
      _$InputSetNewPasswordModelImpl.fromJson;

  @override
  @JsonKey(name: "password")
  String get password;
  @override
  @JsonKey(name: "confirm_password")
  String get confirmPassword;
  @override
  @JsonKey(name: "reference_id")
  String get referenceId;
  @override
  @JsonKey(ignore: true)
  _$$InputSetNewPasswordModelImplCopyWith<_$InputSetNewPasswordModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InputSendOtpChangePasswordModel _$InputSendOtpChangePasswordModelFromJson(
    Map<String, dynamic> json) {
  return _InputSendOtpChangePasswordModel.fromJson(json);
}

/// @nodoc
mixin _$InputSendOtpChangePasswordModel {
  @JsonKey(name: "international_code")
  String get internationalCode => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  String get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputSendOtpChangePasswordModelCopyWith<InputSendOtpChangePasswordModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputSendOtpChangePasswordModelCopyWith<$Res> {
  factory $InputSendOtpChangePasswordModelCopyWith(
          InputSendOtpChangePasswordModel value,
          $Res Function(InputSendOtpChangePasswordModel) then) =
      _$InputSendOtpChangePasswordModelCopyWithImpl<$Res,
          InputSendOtpChangePasswordModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "international_code") String internationalCode,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "otp") String otp});
}

/// @nodoc
class _$InputSendOtpChangePasswordModelCopyWithImpl<$Res,
        $Val extends InputSendOtpChangePasswordModel>
    implements $InputSendOtpChangePasswordModelCopyWith<$Res> {
  _$InputSendOtpChangePasswordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? internationalCode = null,
    Object? phoneNumber = null,
    Object? otp = null,
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
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputSendOtpChangePasswordModelImplCopyWith<$Res>
    implements $InputSendOtpChangePasswordModelCopyWith<$Res> {
  factory _$$InputSendOtpChangePasswordModelImplCopyWith(
          _$InputSendOtpChangePasswordModelImpl value,
          $Res Function(_$InputSendOtpChangePasswordModelImpl) then) =
      __$$InputSendOtpChangePasswordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "international_code") String internationalCode,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "otp") String otp});
}

/// @nodoc
class __$$InputSendOtpChangePasswordModelImplCopyWithImpl<$Res>
    extends _$InputSendOtpChangePasswordModelCopyWithImpl<$Res,
        _$InputSendOtpChangePasswordModelImpl>
    implements _$$InputSendOtpChangePasswordModelImplCopyWith<$Res> {
  __$$InputSendOtpChangePasswordModelImplCopyWithImpl(
      _$InputSendOtpChangePasswordModelImpl _value,
      $Res Function(_$InputSendOtpChangePasswordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? internationalCode = null,
    Object? phoneNumber = null,
    Object? otp = null,
  }) {
    return _then(_$InputSendOtpChangePasswordModelImpl(
      internationalCode: null == internationalCode
          ? _value.internationalCode
          : internationalCode // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$InputSendOtpChangePasswordModelImpl
    implements _InputSendOtpChangePasswordModel {
  _$InputSendOtpChangePasswordModelImpl(
      {@JsonKey(name: "international_code") required this.internationalCode,
      @JsonKey(name: "phone_number") required this.phoneNumber,
      @JsonKey(name: "otp") required this.otp});

  factory _$InputSendOtpChangePasswordModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InputSendOtpChangePasswordModelImplFromJson(json);

  @override
  @JsonKey(name: "international_code")
  final String internationalCode;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  @JsonKey(name: "otp")
  final String otp;

  @override
  String toString() {
    return 'InputSendOtpChangePasswordModel(internationalCode: $internationalCode, phoneNumber: $phoneNumber, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputSendOtpChangePasswordModelImpl &&
            (identical(other.internationalCode, internationalCode) ||
                other.internationalCode == internationalCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, internationalCode, phoneNumber, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputSendOtpChangePasswordModelImplCopyWith<
          _$InputSendOtpChangePasswordModelImpl>
      get copyWith => __$$InputSendOtpChangePasswordModelImplCopyWithImpl<
          _$InputSendOtpChangePasswordModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputSendOtpChangePasswordModelImplToJson(
      this,
    );
  }
}

abstract class _InputSendOtpChangePasswordModel
    implements InputSendOtpChangePasswordModel {
  factory _InputSendOtpChangePasswordModel(
          {@JsonKey(name: "international_code")
          required final String internationalCode,
          @JsonKey(name: "phone_number") required final String phoneNumber,
          @JsonKey(name: "otp") required final String otp}) =
      _$InputSendOtpChangePasswordModelImpl;

  factory _InputSendOtpChangePasswordModel.fromJson(Map<String, dynamic> json) =
      _$InputSendOtpChangePasswordModelImpl.fromJson;

  @override
  @JsonKey(name: "international_code")
  String get internationalCode;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  @JsonKey(name: "otp")
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$InputSendOtpChangePasswordModelImplCopyWith<
          _$InputSendOtpChangePasswordModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
