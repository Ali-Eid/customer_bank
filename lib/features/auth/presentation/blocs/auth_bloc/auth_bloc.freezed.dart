// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputLoginModel input) login,
    required TResult Function(InputChangePasswordModel input) changePassword,
    required TResult Function(InputSendOtpChangePasswordModel input)
        confirmOtpChangePassword,
    required TResult Function(InputSetNewPasswordModel input) setNewPassword,
    required TResult Function() biometricAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputLoginModel input)? login,
    TResult? Function(InputChangePasswordModel input)? changePassword,
    TResult? Function(InputSendOtpChangePasswordModel input)?
        confirmOtpChangePassword,
    TResult? Function(InputSetNewPasswordModel input)? setNewPassword,
    TResult? Function()? biometricAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputLoginModel input)? login,
    TResult Function(InputChangePasswordModel input)? changePassword,
    TResult Function(InputSendOtpChangePasswordModel input)?
        confirmOtpChangePassword,
    TResult Function(InputSetNewPasswordModel input)? setNewPassword,
    TResult Function()? biometricAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ConfirmOtpChangePassword value)
        confirmOtpChangePassword,
    required TResult Function(_SetNewPassword value) setNewPassword,
    required TResult Function(_BiometricAuth value) biometricAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ConfirmOtpChangePassword value)?
        confirmOtpChangePassword,
    TResult? Function(_SetNewPassword value)? setNewPassword,
    TResult? Function(_BiometricAuth value)? biometricAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ConfirmOtpChangePassword value)? confirmOtpChangePassword,
    TResult Function(_SetNewPassword value)? setNewPassword,
    TResult Function(_BiometricAuth value)? biometricAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputLoginModel input});

  $InputLoginModelCopyWith<$Res> get input;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$LoginImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as InputLoginModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InputLoginModelCopyWith<$Res> get input {
    return $InputLoginModelCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value));
    });
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.input});

  @override
  final InputLoginModel input;

  @override
  String toString() {
    return 'AuthEvent.login(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputLoginModel input) login,
    required TResult Function(InputChangePasswordModel input) changePassword,
    required TResult Function(InputSendOtpChangePasswordModel input)
        confirmOtpChangePassword,
    required TResult Function(InputSetNewPasswordModel input) setNewPassword,
    required TResult Function() biometricAuth,
  }) {
    return login(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputLoginModel input)? login,
    TResult? Function(InputChangePasswordModel input)? changePassword,
    TResult? Function(InputSendOtpChangePasswordModel input)?
        confirmOtpChangePassword,
    TResult? Function(InputSetNewPasswordModel input)? setNewPassword,
    TResult? Function()? biometricAuth,
  }) {
    return login?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputLoginModel input)? login,
    TResult Function(InputChangePasswordModel input)? changePassword,
    TResult Function(InputSendOtpChangePasswordModel input)?
        confirmOtpChangePassword,
    TResult Function(InputSetNewPasswordModel input)? setNewPassword,
    TResult Function()? biometricAuth,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ConfirmOtpChangePassword value)
        confirmOtpChangePassword,
    required TResult Function(_SetNewPassword value) setNewPassword,
    required TResult Function(_BiometricAuth value) biometricAuth,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ConfirmOtpChangePassword value)?
        confirmOtpChangePassword,
    TResult? Function(_SetNewPassword value)? setNewPassword,
    TResult? Function(_BiometricAuth value)? biometricAuth,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ConfirmOtpChangePassword value)? confirmOtpChangePassword,
    TResult Function(_SetNewPassword value)? setNewPassword,
    TResult Function(_BiometricAuth value)? biometricAuth,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login({required final InputLoginModel input}) = _$LoginImpl;

  InputLoginModel get input;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordImplCopyWith<$Res> {
  factory _$$ChangePasswordImplCopyWith(_$ChangePasswordImpl value,
          $Res Function(_$ChangePasswordImpl) then) =
      __$$ChangePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputChangePasswordModel input});

  $InputChangePasswordModelCopyWith<$Res> get input;
}

/// @nodoc
class __$$ChangePasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangePasswordImpl>
    implements _$$ChangePasswordImplCopyWith<$Res> {
  __$$ChangePasswordImplCopyWithImpl(
      _$ChangePasswordImpl _value, $Res Function(_$ChangePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$ChangePasswordImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as InputChangePasswordModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InputChangePasswordModelCopyWith<$Res> get input {
    return $InputChangePasswordModelCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value));
    });
  }
}

/// @nodoc

class _$ChangePasswordImpl implements _ChangePassword {
  const _$ChangePasswordImpl({required this.input});

  @override
  final InputChangePasswordModel input;

  @override
  String toString() {
    return 'AuthEvent.changePassword(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      __$$ChangePasswordImplCopyWithImpl<_$ChangePasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputLoginModel input) login,
    required TResult Function(InputChangePasswordModel input) changePassword,
    required TResult Function(InputSendOtpChangePasswordModel input)
        confirmOtpChangePassword,
    required TResult Function(InputSetNewPasswordModel input) setNewPassword,
    required TResult Function() biometricAuth,
  }) {
    return changePassword(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputLoginModel input)? login,
    TResult? Function(InputChangePasswordModel input)? changePassword,
    TResult? Function(InputSendOtpChangePasswordModel input)?
        confirmOtpChangePassword,
    TResult? Function(InputSetNewPasswordModel input)? setNewPassword,
    TResult? Function()? biometricAuth,
  }) {
    return changePassword?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputLoginModel input)? login,
    TResult Function(InputChangePasswordModel input)? changePassword,
    TResult Function(InputSendOtpChangePasswordModel input)?
        confirmOtpChangePassword,
    TResult Function(InputSetNewPasswordModel input)? setNewPassword,
    TResult Function()? biometricAuth,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ConfirmOtpChangePassword value)
        confirmOtpChangePassword,
    required TResult Function(_SetNewPassword value) setNewPassword,
    required TResult Function(_BiometricAuth value) biometricAuth,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ConfirmOtpChangePassword value)?
        confirmOtpChangePassword,
    TResult? Function(_SetNewPassword value)? setNewPassword,
    TResult? Function(_BiometricAuth value)? biometricAuth,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ConfirmOtpChangePassword value)? confirmOtpChangePassword,
    TResult Function(_SetNewPassword value)? setNewPassword,
    TResult Function(_BiometricAuth value)? biometricAuth,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements AuthEvent {
  const factory _ChangePassword(
      {required final InputChangePasswordModel input}) = _$ChangePasswordImpl;

  InputChangePasswordModel get input;
  @JsonKey(ignore: true)
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmOtpChangePasswordImplCopyWith<$Res> {
  factory _$$ConfirmOtpChangePasswordImplCopyWith(
          _$ConfirmOtpChangePasswordImpl value,
          $Res Function(_$ConfirmOtpChangePasswordImpl) then) =
      __$$ConfirmOtpChangePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputSendOtpChangePasswordModel input});

  $InputSendOtpChangePasswordModelCopyWith<$Res> get input;
}

/// @nodoc
class __$$ConfirmOtpChangePasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ConfirmOtpChangePasswordImpl>
    implements _$$ConfirmOtpChangePasswordImplCopyWith<$Res> {
  __$$ConfirmOtpChangePasswordImplCopyWithImpl(
      _$ConfirmOtpChangePasswordImpl _value,
      $Res Function(_$ConfirmOtpChangePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$ConfirmOtpChangePasswordImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as InputSendOtpChangePasswordModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InputSendOtpChangePasswordModelCopyWith<$Res> get input {
    return $InputSendOtpChangePasswordModelCopyWith<$Res>(_value.input,
        (value) {
      return _then(_value.copyWith(input: value));
    });
  }
}

/// @nodoc

class _$ConfirmOtpChangePasswordImpl implements _ConfirmOtpChangePassword {
  const _$ConfirmOtpChangePasswordImpl({required this.input});

  @override
  final InputSendOtpChangePasswordModel input;

  @override
  String toString() {
    return 'AuthEvent.confirmOtpChangePassword(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmOtpChangePasswordImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmOtpChangePasswordImplCopyWith<_$ConfirmOtpChangePasswordImpl>
      get copyWith => __$$ConfirmOtpChangePasswordImplCopyWithImpl<
          _$ConfirmOtpChangePasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputLoginModel input) login,
    required TResult Function(InputChangePasswordModel input) changePassword,
    required TResult Function(InputSendOtpChangePasswordModel input)
        confirmOtpChangePassword,
    required TResult Function(InputSetNewPasswordModel input) setNewPassword,
    required TResult Function() biometricAuth,
  }) {
    return confirmOtpChangePassword(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputLoginModel input)? login,
    TResult? Function(InputChangePasswordModel input)? changePassword,
    TResult? Function(InputSendOtpChangePasswordModel input)?
        confirmOtpChangePassword,
    TResult? Function(InputSetNewPasswordModel input)? setNewPassword,
    TResult? Function()? biometricAuth,
  }) {
    return confirmOtpChangePassword?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputLoginModel input)? login,
    TResult Function(InputChangePasswordModel input)? changePassword,
    TResult Function(InputSendOtpChangePasswordModel input)?
        confirmOtpChangePassword,
    TResult Function(InputSetNewPasswordModel input)? setNewPassword,
    TResult Function()? biometricAuth,
    required TResult orElse(),
  }) {
    if (confirmOtpChangePassword != null) {
      return confirmOtpChangePassword(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ConfirmOtpChangePassword value)
        confirmOtpChangePassword,
    required TResult Function(_SetNewPassword value) setNewPassword,
    required TResult Function(_BiometricAuth value) biometricAuth,
  }) {
    return confirmOtpChangePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ConfirmOtpChangePassword value)?
        confirmOtpChangePassword,
    TResult? Function(_SetNewPassword value)? setNewPassword,
    TResult? Function(_BiometricAuth value)? biometricAuth,
  }) {
    return confirmOtpChangePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ConfirmOtpChangePassword value)? confirmOtpChangePassword,
    TResult Function(_SetNewPassword value)? setNewPassword,
    TResult Function(_BiometricAuth value)? biometricAuth,
    required TResult orElse(),
  }) {
    if (confirmOtpChangePassword != null) {
      return confirmOtpChangePassword(this);
    }
    return orElse();
  }
}

abstract class _ConfirmOtpChangePassword implements AuthEvent {
  const factory _ConfirmOtpChangePassword(
          {required final InputSendOtpChangePasswordModel input}) =
      _$ConfirmOtpChangePasswordImpl;

  InputSendOtpChangePasswordModel get input;
  @JsonKey(ignore: true)
  _$$ConfirmOtpChangePasswordImplCopyWith<_$ConfirmOtpChangePasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetNewPasswordImplCopyWith<$Res> {
  factory _$$SetNewPasswordImplCopyWith(_$SetNewPasswordImpl value,
          $Res Function(_$SetNewPasswordImpl) then) =
      __$$SetNewPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputSetNewPasswordModel input});

  $InputSetNewPasswordModelCopyWith<$Res> get input;
}

/// @nodoc
class __$$SetNewPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SetNewPasswordImpl>
    implements _$$SetNewPasswordImplCopyWith<$Res> {
  __$$SetNewPasswordImplCopyWithImpl(
      _$SetNewPasswordImpl _value, $Res Function(_$SetNewPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$SetNewPasswordImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as InputSetNewPasswordModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InputSetNewPasswordModelCopyWith<$Res> get input {
    return $InputSetNewPasswordModelCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value));
    });
  }
}

/// @nodoc

class _$SetNewPasswordImpl implements _SetNewPassword {
  const _$SetNewPasswordImpl({required this.input});

  @override
  final InputSetNewPasswordModel input;

  @override
  String toString() {
    return 'AuthEvent.setNewPassword(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetNewPasswordImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetNewPasswordImplCopyWith<_$SetNewPasswordImpl> get copyWith =>
      __$$SetNewPasswordImplCopyWithImpl<_$SetNewPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputLoginModel input) login,
    required TResult Function(InputChangePasswordModel input) changePassword,
    required TResult Function(InputSendOtpChangePasswordModel input)
        confirmOtpChangePassword,
    required TResult Function(InputSetNewPasswordModel input) setNewPassword,
    required TResult Function() biometricAuth,
  }) {
    return setNewPassword(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputLoginModel input)? login,
    TResult? Function(InputChangePasswordModel input)? changePassword,
    TResult? Function(InputSendOtpChangePasswordModel input)?
        confirmOtpChangePassword,
    TResult? Function(InputSetNewPasswordModel input)? setNewPassword,
    TResult? Function()? biometricAuth,
  }) {
    return setNewPassword?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputLoginModel input)? login,
    TResult Function(InputChangePasswordModel input)? changePassword,
    TResult Function(InputSendOtpChangePasswordModel input)?
        confirmOtpChangePassword,
    TResult Function(InputSetNewPasswordModel input)? setNewPassword,
    TResult Function()? biometricAuth,
    required TResult orElse(),
  }) {
    if (setNewPassword != null) {
      return setNewPassword(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ConfirmOtpChangePassword value)
        confirmOtpChangePassword,
    required TResult Function(_SetNewPassword value) setNewPassword,
    required TResult Function(_BiometricAuth value) biometricAuth,
  }) {
    return setNewPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ConfirmOtpChangePassword value)?
        confirmOtpChangePassword,
    TResult? Function(_SetNewPassword value)? setNewPassword,
    TResult? Function(_BiometricAuth value)? biometricAuth,
  }) {
    return setNewPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ConfirmOtpChangePassword value)? confirmOtpChangePassword,
    TResult Function(_SetNewPassword value)? setNewPassword,
    TResult Function(_BiometricAuth value)? biometricAuth,
    required TResult orElse(),
  }) {
    if (setNewPassword != null) {
      return setNewPassword(this);
    }
    return orElse();
  }
}

abstract class _SetNewPassword implements AuthEvent {
  const factory _SetNewPassword(
      {required final InputSetNewPasswordModel input}) = _$SetNewPasswordImpl;

  InputSetNewPasswordModel get input;
  @JsonKey(ignore: true)
  _$$SetNewPasswordImplCopyWith<_$SetNewPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BiometricAuthImplCopyWith<$Res> {
  factory _$$BiometricAuthImplCopyWith(
          _$BiometricAuthImpl value, $Res Function(_$BiometricAuthImpl) then) =
      __$$BiometricAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BiometricAuthImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$BiometricAuthImpl>
    implements _$$BiometricAuthImplCopyWith<$Res> {
  __$$BiometricAuthImplCopyWithImpl(
      _$BiometricAuthImpl _value, $Res Function(_$BiometricAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BiometricAuthImpl implements _BiometricAuth {
  const _$BiometricAuthImpl();

  @override
  String toString() {
    return 'AuthEvent.biometricAuth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BiometricAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputLoginModel input) login,
    required TResult Function(InputChangePasswordModel input) changePassword,
    required TResult Function(InputSendOtpChangePasswordModel input)
        confirmOtpChangePassword,
    required TResult Function(InputSetNewPasswordModel input) setNewPassword,
    required TResult Function() biometricAuth,
  }) {
    return biometricAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputLoginModel input)? login,
    TResult? Function(InputChangePasswordModel input)? changePassword,
    TResult? Function(InputSendOtpChangePasswordModel input)?
        confirmOtpChangePassword,
    TResult? Function(InputSetNewPasswordModel input)? setNewPassword,
    TResult? Function()? biometricAuth,
  }) {
    return biometricAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputLoginModel input)? login,
    TResult Function(InputChangePasswordModel input)? changePassword,
    TResult Function(InputSendOtpChangePasswordModel input)?
        confirmOtpChangePassword,
    TResult Function(InputSetNewPasswordModel input)? setNewPassword,
    TResult Function()? biometricAuth,
    required TResult orElse(),
  }) {
    if (biometricAuth != null) {
      return biometricAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ConfirmOtpChangePassword value)
        confirmOtpChangePassword,
    required TResult Function(_SetNewPassword value) setNewPassword,
    required TResult Function(_BiometricAuth value) biometricAuth,
  }) {
    return biometricAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ConfirmOtpChangePassword value)?
        confirmOtpChangePassword,
    TResult? Function(_SetNewPassword value)? setNewPassword,
    TResult? Function(_BiometricAuth value)? biometricAuth,
  }) {
    return biometricAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ConfirmOtpChangePassword value)? confirmOtpChangePassword,
    TResult Function(_SetNewPassword value)? setNewPassword,
    TResult Function(_BiometricAuth value)? biometricAuth,
    required TResult orElse(),
  }) {
    if (biometricAuth != null) {
      return biometricAuth(this);
    }
    return orElse();
  }
}

abstract class _BiometricAuth implements AuthEvent {
  const factory _BiometricAuth() = _$BiometricAuthImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingChangePassword,
    required TResult Function(ResponseModel<LoginModel> success) success,
    required TResult Function(ResponseModel<dynamic> success) changePassword,
    required TResult Function(
            ResponseModel<ConfirmOtpChangePasswordModel> success)
        confirmOtpChangePassword,
    required TResult Function(ResponseModel<dynamic> success) setNewPassword,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingChangePassword,
    TResult? Function(ResponseModel<LoginModel> success)? success,
    TResult? Function(ResponseModel<dynamic> success)? changePassword,
    TResult? Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult? Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingChangePassword,
    TResult Function(ResponseModel<LoginModel> success)? success,
    TResult Function(ResponseModel<dynamic> success)? changePassword,
    TResult Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingChangePassword value)
        loadingChangePassword,
    required TResult Function(_Success value) success,
    required TResult Function(_ChangePasswordState value) changePassword,
    required TResult Function(_ConfirmOtpChangePasswordState value)
        confirmOtpChangePassword,
    required TResult Function(_SetNewPasswordState value) setNewPassword,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult? Function(_Success value)? success,
    TResult? Function(_ChangePasswordState value)? changePassword,
    TResult? Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult? Function(_SetNewPasswordState value)? setNewPassword,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult Function(_Success value)? success,
    TResult Function(_ChangePasswordState value)? changePassword,
    TResult Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult Function(_SetNewPasswordState value)? setNewPassword,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingChangePassword,
    required TResult Function(ResponseModel<LoginModel> success) success,
    required TResult Function(ResponseModel<dynamic> success) changePassword,
    required TResult Function(
            ResponseModel<ConfirmOtpChangePasswordModel> success)
        confirmOtpChangePassword,
    required TResult Function(ResponseModel<dynamic> success) setNewPassword,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingChangePassword,
    TResult? Function(ResponseModel<LoginModel> success)? success,
    TResult? Function(ResponseModel<dynamic> success)? changePassword,
    TResult? Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult? Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingChangePassword,
    TResult Function(ResponseModel<LoginModel> success)? success,
    TResult Function(ResponseModel<dynamic> success)? changePassword,
    TResult Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingChangePassword value)
        loadingChangePassword,
    required TResult Function(_Success value) success,
    required TResult Function(_ChangePasswordState value) changePassword,
    required TResult Function(_ConfirmOtpChangePasswordState value)
        confirmOtpChangePassword,
    required TResult Function(_SetNewPasswordState value) setNewPassword,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult? Function(_Success value)? success,
    TResult? Function(_ChangePasswordState value)? changePassword,
    TResult? Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult? Function(_SetNewPasswordState value)? setNewPassword,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult Function(_Success value)? success,
    TResult Function(_ChangePasswordState value)? changePassword,
    TResult Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult Function(_SetNewPasswordState value)? setNewPassword,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingChangePassword,
    required TResult Function(ResponseModel<LoginModel> success) success,
    required TResult Function(ResponseModel<dynamic> success) changePassword,
    required TResult Function(
            ResponseModel<ConfirmOtpChangePasswordModel> success)
        confirmOtpChangePassword,
    required TResult Function(ResponseModel<dynamic> success) setNewPassword,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingChangePassword,
    TResult? Function(ResponseModel<LoginModel> success)? success,
    TResult? Function(ResponseModel<dynamic> success)? changePassword,
    TResult? Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult? Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingChangePassword,
    TResult Function(ResponseModel<LoginModel> success)? success,
    TResult Function(ResponseModel<dynamic> success)? changePassword,
    TResult Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingChangePassword value)
        loadingChangePassword,
    required TResult Function(_Success value) success,
    required TResult Function(_ChangePasswordState value) changePassword,
    required TResult Function(_ConfirmOtpChangePasswordState value)
        confirmOtpChangePassword,
    required TResult Function(_SetNewPasswordState value) setNewPassword,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult? Function(_Success value)? success,
    TResult? Function(_ChangePasswordState value)? changePassword,
    TResult? Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult? Function(_SetNewPasswordState value)? setNewPassword,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult Function(_Success value)? success,
    TResult Function(_ChangePasswordState value)? changePassword,
    TResult Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult Function(_SetNewPasswordState value)? setNewPassword,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadingChangePasswordImplCopyWith<$Res> {
  factory _$$LoadingChangePasswordImplCopyWith(
          _$LoadingChangePasswordImpl value,
          $Res Function(_$LoadingChangePasswordImpl) then) =
      __$$LoadingChangePasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingChangePasswordImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingChangePasswordImpl>
    implements _$$LoadingChangePasswordImplCopyWith<$Res> {
  __$$LoadingChangePasswordImplCopyWithImpl(_$LoadingChangePasswordImpl _value,
      $Res Function(_$LoadingChangePasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingChangePasswordImpl implements _LoadingChangePassword {
  const _$LoadingChangePasswordImpl();

  @override
  String toString() {
    return 'AuthState.loadingChangePassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingChangePasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingChangePassword,
    required TResult Function(ResponseModel<LoginModel> success) success,
    required TResult Function(ResponseModel<dynamic> success) changePassword,
    required TResult Function(
            ResponseModel<ConfirmOtpChangePasswordModel> success)
        confirmOtpChangePassword,
    required TResult Function(ResponseModel<dynamic> success) setNewPassword,
    required TResult Function(String message) error,
  }) {
    return loadingChangePassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingChangePassword,
    TResult? Function(ResponseModel<LoginModel> success)? success,
    TResult? Function(ResponseModel<dynamic> success)? changePassword,
    TResult? Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult? Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult? Function(String message)? error,
  }) {
    return loadingChangePassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingChangePassword,
    TResult Function(ResponseModel<LoginModel> success)? success,
    TResult Function(ResponseModel<dynamic> success)? changePassword,
    TResult Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadingChangePassword != null) {
      return loadingChangePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingChangePassword value)
        loadingChangePassword,
    required TResult Function(_Success value) success,
    required TResult Function(_ChangePasswordState value) changePassword,
    required TResult Function(_ConfirmOtpChangePasswordState value)
        confirmOtpChangePassword,
    required TResult Function(_SetNewPasswordState value) setNewPassword,
    required TResult Function(_Error value) error,
  }) {
    return loadingChangePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult? Function(_Success value)? success,
    TResult? Function(_ChangePasswordState value)? changePassword,
    TResult? Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult? Function(_SetNewPasswordState value)? setNewPassword,
    TResult? Function(_Error value)? error,
  }) {
    return loadingChangePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult Function(_Success value)? success,
    TResult Function(_ChangePasswordState value)? changePassword,
    TResult Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult Function(_SetNewPasswordState value)? setNewPassword,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadingChangePassword != null) {
      return loadingChangePassword(this);
    }
    return orElse();
  }
}

abstract class _LoadingChangePassword implements AuthState {
  const factory _LoadingChangePassword() = _$LoadingChangePasswordImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseModel<LoginModel> success});

  $ResponseModelCopyWith<LoginModel, $Res> get success;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$SuccessImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as ResponseModel<LoginModel>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<LoginModel, $Res> get success {
    return $ResponseModelCopyWith<LoginModel, $Res>(_value.success, (value) {
      return _then(_value.copyWith(success: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required this.success});

  @override
  final ResponseModel<LoginModel> success;

  @override
  String toString() {
    return 'AuthState.success(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingChangePassword,
    required TResult Function(ResponseModel<LoginModel> success) success,
    required TResult Function(ResponseModel<dynamic> success) changePassword,
    required TResult Function(
            ResponseModel<ConfirmOtpChangePasswordModel> success)
        confirmOtpChangePassword,
    required TResult Function(ResponseModel<dynamic> success) setNewPassword,
    required TResult Function(String message) error,
  }) {
    return success(this.success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingChangePassword,
    TResult? Function(ResponseModel<LoginModel> success)? success,
    TResult? Function(ResponseModel<dynamic> success)? changePassword,
    TResult? Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult? Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult? Function(String message)? error,
  }) {
    return success?.call(this.success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingChangePassword,
    TResult Function(ResponseModel<LoginModel> success)? success,
    TResult Function(ResponseModel<dynamic> success)? changePassword,
    TResult Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this.success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingChangePassword value)
        loadingChangePassword,
    required TResult Function(_Success value) success,
    required TResult Function(_ChangePasswordState value) changePassword,
    required TResult Function(_ConfirmOtpChangePasswordState value)
        confirmOtpChangePassword,
    required TResult Function(_SetNewPasswordState value) setNewPassword,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult? Function(_Success value)? success,
    TResult? Function(_ChangePasswordState value)? changePassword,
    TResult? Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult? Function(_SetNewPasswordState value)? setNewPassword,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult Function(_Success value)? success,
    TResult Function(_ChangePasswordState value)? changePassword,
    TResult Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult Function(_SetNewPasswordState value)? setNewPassword,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AuthState {
  const factory _Success({required final ResponseModel<LoginModel> success}) =
      _$SuccessImpl;

  ResponseModel<LoginModel> get success;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordStateImplCopyWith<$Res> {
  factory _$$ChangePasswordStateImplCopyWith(_$ChangePasswordStateImpl value,
          $Res Function(_$ChangePasswordStateImpl) then) =
      __$$ChangePasswordStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseModel<dynamic> success});

  $ResponseModelCopyWith<dynamic, $Res> get success;
}

/// @nodoc
class __$$ChangePasswordStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ChangePasswordStateImpl>
    implements _$$ChangePasswordStateImplCopyWith<$Res> {
  __$$ChangePasswordStateImplCopyWithImpl(_$ChangePasswordStateImpl _value,
      $Res Function(_$ChangePasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$ChangePasswordStateImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as ResponseModel<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<dynamic, $Res> get success {
    return $ResponseModelCopyWith<dynamic, $Res>(_value.success, (value) {
      return _then(_value.copyWith(success: value));
    });
  }
}

/// @nodoc

class _$ChangePasswordStateImpl implements _ChangePasswordState {
  const _$ChangePasswordStateImpl({required this.success});

  @override
  final ResponseModel<dynamic> success;

  @override
  String toString() {
    return 'AuthState.changePassword(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordStateImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordStateImplCopyWith<_$ChangePasswordStateImpl> get copyWith =>
      __$$ChangePasswordStateImplCopyWithImpl<_$ChangePasswordStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingChangePassword,
    required TResult Function(ResponseModel<LoginModel> success) success,
    required TResult Function(ResponseModel<dynamic> success) changePassword,
    required TResult Function(
            ResponseModel<ConfirmOtpChangePasswordModel> success)
        confirmOtpChangePassword,
    required TResult Function(ResponseModel<dynamic> success) setNewPassword,
    required TResult Function(String message) error,
  }) {
    return changePassword(this.success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingChangePassword,
    TResult? Function(ResponseModel<LoginModel> success)? success,
    TResult? Function(ResponseModel<dynamic> success)? changePassword,
    TResult? Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult? Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult? Function(String message)? error,
  }) {
    return changePassword?.call(this.success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingChangePassword,
    TResult Function(ResponseModel<LoginModel> success)? success,
    TResult Function(ResponseModel<dynamic> success)? changePassword,
    TResult Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this.success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingChangePassword value)
        loadingChangePassword,
    required TResult Function(_Success value) success,
    required TResult Function(_ChangePasswordState value) changePassword,
    required TResult Function(_ConfirmOtpChangePasswordState value)
        confirmOtpChangePassword,
    required TResult Function(_SetNewPasswordState value) setNewPassword,
    required TResult Function(_Error value) error,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult? Function(_Success value)? success,
    TResult? Function(_ChangePasswordState value)? changePassword,
    TResult? Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult? Function(_SetNewPasswordState value)? setNewPassword,
    TResult? Function(_Error value)? error,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult Function(_Success value)? success,
    TResult Function(_ChangePasswordState value)? changePassword,
    TResult Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult Function(_SetNewPasswordState value)? setNewPassword,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePasswordState implements AuthState {
  const factory _ChangePasswordState(
          {required final ResponseModel<dynamic> success}) =
      _$ChangePasswordStateImpl;

  ResponseModel<dynamic> get success;
  @JsonKey(ignore: true)
  _$$ChangePasswordStateImplCopyWith<_$ChangePasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmOtpChangePasswordStateImplCopyWith<$Res> {
  factory _$$ConfirmOtpChangePasswordStateImplCopyWith(
          _$ConfirmOtpChangePasswordStateImpl value,
          $Res Function(_$ConfirmOtpChangePasswordStateImpl) then) =
      __$$ConfirmOtpChangePasswordStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseModel<ConfirmOtpChangePasswordModel> success});

  $ResponseModelCopyWith<ConfirmOtpChangePasswordModel, $Res> get success;
}

/// @nodoc
class __$$ConfirmOtpChangePasswordStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ConfirmOtpChangePasswordStateImpl>
    implements _$$ConfirmOtpChangePasswordStateImplCopyWith<$Res> {
  __$$ConfirmOtpChangePasswordStateImplCopyWithImpl(
      _$ConfirmOtpChangePasswordStateImpl _value,
      $Res Function(_$ConfirmOtpChangePasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$ConfirmOtpChangePasswordStateImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as ResponseModel<ConfirmOtpChangePasswordModel>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<ConfirmOtpChangePasswordModel, $Res> get success {
    return $ResponseModelCopyWith<ConfirmOtpChangePasswordModel, $Res>(
        _value.success, (value) {
      return _then(_value.copyWith(success: value));
    });
  }
}

/// @nodoc

class _$ConfirmOtpChangePasswordStateImpl
    implements _ConfirmOtpChangePasswordState {
  const _$ConfirmOtpChangePasswordStateImpl({required this.success});

  @override
  final ResponseModel<ConfirmOtpChangePasswordModel> success;

  @override
  String toString() {
    return 'AuthState.confirmOtpChangePassword(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmOtpChangePasswordStateImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmOtpChangePasswordStateImplCopyWith<
          _$ConfirmOtpChangePasswordStateImpl>
      get copyWith => __$$ConfirmOtpChangePasswordStateImplCopyWithImpl<
          _$ConfirmOtpChangePasswordStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingChangePassword,
    required TResult Function(ResponseModel<LoginModel> success) success,
    required TResult Function(ResponseModel<dynamic> success) changePassword,
    required TResult Function(
            ResponseModel<ConfirmOtpChangePasswordModel> success)
        confirmOtpChangePassword,
    required TResult Function(ResponseModel<dynamic> success) setNewPassword,
    required TResult Function(String message) error,
  }) {
    return confirmOtpChangePassword(this.success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingChangePassword,
    TResult? Function(ResponseModel<LoginModel> success)? success,
    TResult? Function(ResponseModel<dynamic> success)? changePassword,
    TResult? Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult? Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult? Function(String message)? error,
  }) {
    return confirmOtpChangePassword?.call(this.success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingChangePassword,
    TResult Function(ResponseModel<LoginModel> success)? success,
    TResult Function(ResponseModel<dynamic> success)? changePassword,
    TResult Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (confirmOtpChangePassword != null) {
      return confirmOtpChangePassword(this.success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingChangePassword value)
        loadingChangePassword,
    required TResult Function(_Success value) success,
    required TResult Function(_ChangePasswordState value) changePassword,
    required TResult Function(_ConfirmOtpChangePasswordState value)
        confirmOtpChangePassword,
    required TResult Function(_SetNewPasswordState value) setNewPassword,
    required TResult Function(_Error value) error,
  }) {
    return confirmOtpChangePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult? Function(_Success value)? success,
    TResult? Function(_ChangePasswordState value)? changePassword,
    TResult? Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult? Function(_SetNewPasswordState value)? setNewPassword,
    TResult? Function(_Error value)? error,
  }) {
    return confirmOtpChangePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult Function(_Success value)? success,
    TResult Function(_ChangePasswordState value)? changePassword,
    TResult Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult Function(_SetNewPasswordState value)? setNewPassword,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (confirmOtpChangePassword != null) {
      return confirmOtpChangePassword(this);
    }
    return orElse();
  }
}

abstract class _ConfirmOtpChangePasswordState implements AuthState {
  const factory _ConfirmOtpChangePasswordState(
      {required final ResponseModel<ConfirmOtpChangePasswordModel>
          success}) = _$ConfirmOtpChangePasswordStateImpl;

  ResponseModel<ConfirmOtpChangePasswordModel> get success;
  @JsonKey(ignore: true)
  _$$ConfirmOtpChangePasswordStateImplCopyWith<
          _$ConfirmOtpChangePasswordStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetNewPasswordStateImplCopyWith<$Res> {
  factory _$$SetNewPasswordStateImplCopyWith(_$SetNewPasswordStateImpl value,
          $Res Function(_$SetNewPasswordStateImpl) then) =
      __$$SetNewPasswordStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseModel<dynamic> success});

  $ResponseModelCopyWith<dynamic, $Res> get success;
}

/// @nodoc
class __$$SetNewPasswordStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SetNewPasswordStateImpl>
    implements _$$SetNewPasswordStateImplCopyWith<$Res> {
  __$$SetNewPasswordStateImplCopyWithImpl(_$SetNewPasswordStateImpl _value,
      $Res Function(_$SetNewPasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$SetNewPasswordStateImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as ResponseModel<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<dynamic, $Res> get success {
    return $ResponseModelCopyWith<dynamic, $Res>(_value.success, (value) {
      return _then(_value.copyWith(success: value));
    });
  }
}

/// @nodoc

class _$SetNewPasswordStateImpl implements _SetNewPasswordState {
  const _$SetNewPasswordStateImpl({required this.success});

  @override
  final ResponseModel<dynamic> success;

  @override
  String toString() {
    return 'AuthState.setNewPassword(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetNewPasswordStateImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetNewPasswordStateImplCopyWith<_$SetNewPasswordStateImpl> get copyWith =>
      __$$SetNewPasswordStateImplCopyWithImpl<_$SetNewPasswordStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingChangePassword,
    required TResult Function(ResponseModel<LoginModel> success) success,
    required TResult Function(ResponseModel<dynamic> success) changePassword,
    required TResult Function(
            ResponseModel<ConfirmOtpChangePasswordModel> success)
        confirmOtpChangePassword,
    required TResult Function(ResponseModel<dynamic> success) setNewPassword,
    required TResult Function(String message) error,
  }) {
    return setNewPassword(this.success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingChangePassword,
    TResult? Function(ResponseModel<LoginModel> success)? success,
    TResult? Function(ResponseModel<dynamic> success)? changePassword,
    TResult? Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult? Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult? Function(String message)? error,
  }) {
    return setNewPassword?.call(this.success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingChangePassword,
    TResult Function(ResponseModel<LoginModel> success)? success,
    TResult Function(ResponseModel<dynamic> success)? changePassword,
    TResult Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (setNewPassword != null) {
      return setNewPassword(this.success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingChangePassword value)
        loadingChangePassword,
    required TResult Function(_Success value) success,
    required TResult Function(_ChangePasswordState value) changePassword,
    required TResult Function(_ConfirmOtpChangePasswordState value)
        confirmOtpChangePassword,
    required TResult Function(_SetNewPasswordState value) setNewPassword,
    required TResult Function(_Error value) error,
  }) {
    return setNewPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult? Function(_Success value)? success,
    TResult? Function(_ChangePasswordState value)? changePassword,
    TResult? Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult? Function(_SetNewPasswordState value)? setNewPassword,
    TResult? Function(_Error value)? error,
  }) {
    return setNewPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult Function(_Success value)? success,
    TResult Function(_ChangePasswordState value)? changePassword,
    TResult Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult Function(_SetNewPasswordState value)? setNewPassword,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (setNewPassword != null) {
      return setNewPassword(this);
    }
    return orElse();
  }
}

abstract class _SetNewPasswordState implements AuthState {
  const factory _SetNewPasswordState(
          {required final ResponseModel<dynamic> success}) =
      _$SetNewPasswordStateImpl;

  ResponseModel<dynamic> get success;
  @JsonKey(ignore: true)
  _$$SetNewPasswordStateImplCopyWith<_$SetNewPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingChangePassword,
    required TResult Function(ResponseModel<LoginModel> success) success,
    required TResult Function(ResponseModel<dynamic> success) changePassword,
    required TResult Function(
            ResponseModel<ConfirmOtpChangePasswordModel> success)
        confirmOtpChangePassword,
    required TResult Function(ResponseModel<dynamic> success) setNewPassword,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingChangePassword,
    TResult? Function(ResponseModel<LoginModel> success)? success,
    TResult? Function(ResponseModel<dynamic> success)? changePassword,
    TResult? Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult? Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingChangePassword,
    TResult Function(ResponseModel<LoginModel> success)? success,
    TResult Function(ResponseModel<dynamic> success)? changePassword,
    TResult Function(ResponseModel<ConfirmOtpChangePasswordModel> success)?
        confirmOtpChangePassword,
    TResult Function(ResponseModel<dynamic> success)? setNewPassword,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingChangePassword value)
        loadingChangePassword,
    required TResult Function(_Success value) success,
    required TResult Function(_ChangePasswordState value) changePassword,
    required TResult Function(_ConfirmOtpChangePasswordState value)
        confirmOtpChangePassword,
    required TResult Function(_SetNewPasswordState value) setNewPassword,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult? Function(_Success value)? success,
    TResult? Function(_ChangePasswordState value)? changePassword,
    TResult? Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult? Function(_SetNewPasswordState value)? setNewPassword,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingChangePassword value)? loadingChangePassword,
    TResult Function(_Success value)? success,
    TResult Function(_ChangePasswordState value)? changePassword,
    TResult Function(_ConfirmOtpChangePasswordState value)?
        confirmOtpChangePassword,
    TResult Function(_SetNewPasswordState value)? setNewPassword,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
