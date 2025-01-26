// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransferEvent {
  Object get input => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputTransferModel input)
        storeLocalTransferMyAccounts,
    required TResult Function(InputTransferModel input)
        storeInternalTransferMyAccounts,
    required TResult Function(InputConfirmTransferModel input)
        confirmLocalTransferMyAccounts,
    required TResult Function(InputConfirmTransferModel input)
        confirmInternalTransferMyAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputTransferModel input)? storeLocalTransferMyAccounts,
    TResult? Function(InputTransferModel input)?
        storeInternalTransferMyAccounts,
    TResult? Function(InputConfirmTransferModel input)?
        confirmLocalTransferMyAccounts,
    TResult? Function(InputConfirmTransferModel input)?
        confirmInternalTransferMyAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputTransferModel input)? storeLocalTransferMyAccounts,
    TResult Function(InputTransferModel input)? storeInternalTransferMyAccounts,
    TResult Function(InputConfirmTransferModel input)?
        confirmLocalTransferMyAccounts,
    TResult Function(InputConfirmTransferModel input)?
        confirmInternalTransferMyAccounts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreLocalTransferMyAccounts value)
        storeLocalTransferMyAccounts,
    required TResult Function(_StoreInternalTransferMyAccounts value)
        storeInternalTransferMyAccounts,
    required TResult Function(_ConfirmLocalTransferMyAccounts value)
        confirmLocalTransferMyAccounts,
    required TResult Function(_ConfirmInternalTransferMyAccounts value)
        confirmInternalTransferMyAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoreLocalTransferMyAccounts value)?
        storeLocalTransferMyAccounts,
    TResult? Function(_StoreInternalTransferMyAccounts value)?
        storeInternalTransferMyAccounts,
    TResult? Function(_ConfirmLocalTransferMyAccounts value)?
        confirmLocalTransferMyAccounts,
    TResult? Function(_ConfirmInternalTransferMyAccounts value)?
        confirmInternalTransferMyAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreLocalTransferMyAccounts value)?
        storeLocalTransferMyAccounts,
    TResult Function(_StoreInternalTransferMyAccounts value)?
        storeInternalTransferMyAccounts,
    TResult Function(_ConfirmLocalTransferMyAccounts value)?
        confirmLocalTransferMyAccounts,
    TResult Function(_ConfirmInternalTransferMyAccounts value)?
        confirmInternalTransferMyAccounts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferEventCopyWith<$Res> {
  factory $TransferEventCopyWith(
          TransferEvent value, $Res Function(TransferEvent) then) =
      _$TransferEventCopyWithImpl<$Res, TransferEvent>;
}

/// @nodoc
class _$TransferEventCopyWithImpl<$Res, $Val extends TransferEvent>
    implements $TransferEventCopyWith<$Res> {
  _$TransferEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StoreLocalTransferMyAccountsImplCopyWith<$Res> {
  factory _$$StoreLocalTransferMyAccountsImplCopyWith(
          _$StoreLocalTransferMyAccountsImpl value,
          $Res Function(_$StoreLocalTransferMyAccountsImpl) then) =
      __$$StoreLocalTransferMyAccountsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputTransferModel input});

  $InputTransferModelCopyWith<$Res> get input;
}

/// @nodoc
class __$$StoreLocalTransferMyAccountsImplCopyWithImpl<$Res>
    extends _$TransferEventCopyWithImpl<$Res,
        _$StoreLocalTransferMyAccountsImpl>
    implements _$$StoreLocalTransferMyAccountsImplCopyWith<$Res> {
  __$$StoreLocalTransferMyAccountsImplCopyWithImpl(
      _$StoreLocalTransferMyAccountsImpl _value,
      $Res Function(_$StoreLocalTransferMyAccountsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$StoreLocalTransferMyAccountsImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as InputTransferModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InputTransferModelCopyWith<$Res> get input {
    return $InputTransferModelCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value));
    });
  }
}

/// @nodoc

class _$StoreLocalTransferMyAccountsImpl
    implements _StoreLocalTransferMyAccounts {
  const _$StoreLocalTransferMyAccountsImpl({required this.input});

  @override
  final InputTransferModel input;

  @override
  String toString() {
    return 'TransferEvent.storeLocalTransferMyAccounts(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreLocalTransferMyAccountsImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreLocalTransferMyAccountsImplCopyWith<
          _$StoreLocalTransferMyAccountsImpl>
      get copyWith => __$$StoreLocalTransferMyAccountsImplCopyWithImpl<
          _$StoreLocalTransferMyAccountsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputTransferModel input)
        storeLocalTransferMyAccounts,
    required TResult Function(InputTransferModel input)
        storeInternalTransferMyAccounts,
    required TResult Function(InputConfirmTransferModel input)
        confirmLocalTransferMyAccounts,
    required TResult Function(InputConfirmTransferModel input)
        confirmInternalTransferMyAccounts,
  }) {
    return storeLocalTransferMyAccounts(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputTransferModel input)? storeLocalTransferMyAccounts,
    TResult? Function(InputTransferModel input)?
        storeInternalTransferMyAccounts,
    TResult? Function(InputConfirmTransferModel input)?
        confirmLocalTransferMyAccounts,
    TResult? Function(InputConfirmTransferModel input)?
        confirmInternalTransferMyAccounts,
  }) {
    return storeLocalTransferMyAccounts?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputTransferModel input)? storeLocalTransferMyAccounts,
    TResult Function(InputTransferModel input)? storeInternalTransferMyAccounts,
    TResult Function(InputConfirmTransferModel input)?
        confirmLocalTransferMyAccounts,
    TResult Function(InputConfirmTransferModel input)?
        confirmInternalTransferMyAccounts,
    required TResult orElse(),
  }) {
    if (storeLocalTransferMyAccounts != null) {
      return storeLocalTransferMyAccounts(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreLocalTransferMyAccounts value)
        storeLocalTransferMyAccounts,
    required TResult Function(_StoreInternalTransferMyAccounts value)
        storeInternalTransferMyAccounts,
    required TResult Function(_ConfirmLocalTransferMyAccounts value)
        confirmLocalTransferMyAccounts,
    required TResult Function(_ConfirmInternalTransferMyAccounts value)
        confirmInternalTransferMyAccounts,
  }) {
    return storeLocalTransferMyAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoreLocalTransferMyAccounts value)?
        storeLocalTransferMyAccounts,
    TResult? Function(_StoreInternalTransferMyAccounts value)?
        storeInternalTransferMyAccounts,
    TResult? Function(_ConfirmLocalTransferMyAccounts value)?
        confirmLocalTransferMyAccounts,
    TResult? Function(_ConfirmInternalTransferMyAccounts value)?
        confirmInternalTransferMyAccounts,
  }) {
    return storeLocalTransferMyAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreLocalTransferMyAccounts value)?
        storeLocalTransferMyAccounts,
    TResult Function(_StoreInternalTransferMyAccounts value)?
        storeInternalTransferMyAccounts,
    TResult Function(_ConfirmLocalTransferMyAccounts value)?
        confirmLocalTransferMyAccounts,
    TResult Function(_ConfirmInternalTransferMyAccounts value)?
        confirmInternalTransferMyAccounts,
    required TResult orElse(),
  }) {
    if (storeLocalTransferMyAccounts != null) {
      return storeLocalTransferMyAccounts(this);
    }
    return orElse();
  }
}

abstract class _StoreLocalTransferMyAccounts implements TransferEvent {
  const factory _StoreLocalTransferMyAccounts(
          {required final InputTransferModel input}) =
      _$StoreLocalTransferMyAccountsImpl;

  @override
  InputTransferModel get input;
  @JsonKey(ignore: true)
  _$$StoreLocalTransferMyAccountsImplCopyWith<
          _$StoreLocalTransferMyAccountsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoreInternalTransferMyAccountsImplCopyWith<$Res> {
  factory _$$StoreInternalTransferMyAccountsImplCopyWith(
          _$StoreInternalTransferMyAccountsImpl value,
          $Res Function(_$StoreInternalTransferMyAccountsImpl) then) =
      __$$StoreInternalTransferMyAccountsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputTransferModel input});

  $InputTransferModelCopyWith<$Res> get input;
}

/// @nodoc
class __$$StoreInternalTransferMyAccountsImplCopyWithImpl<$Res>
    extends _$TransferEventCopyWithImpl<$Res,
        _$StoreInternalTransferMyAccountsImpl>
    implements _$$StoreInternalTransferMyAccountsImplCopyWith<$Res> {
  __$$StoreInternalTransferMyAccountsImplCopyWithImpl(
      _$StoreInternalTransferMyAccountsImpl _value,
      $Res Function(_$StoreInternalTransferMyAccountsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$StoreInternalTransferMyAccountsImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as InputTransferModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InputTransferModelCopyWith<$Res> get input {
    return $InputTransferModelCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value));
    });
  }
}

/// @nodoc

class _$StoreInternalTransferMyAccountsImpl
    implements _StoreInternalTransferMyAccounts {
  const _$StoreInternalTransferMyAccountsImpl({required this.input});

  @override
  final InputTransferModel input;

  @override
  String toString() {
    return 'TransferEvent.storeInternalTransferMyAccounts(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreInternalTransferMyAccountsImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreInternalTransferMyAccountsImplCopyWith<
          _$StoreInternalTransferMyAccountsImpl>
      get copyWith => __$$StoreInternalTransferMyAccountsImplCopyWithImpl<
          _$StoreInternalTransferMyAccountsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputTransferModel input)
        storeLocalTransferMyAccounts,
    required TResult Function(InputTransferModel input)
        storeInternalTransferMyAccounts,
    required TResult Function(InputConfirmTransferModel input)
        confirmLocalTransferMyAccounts,
    required TResult Function(InputConfirmTransferModel input)
        confirmInternalTransferMyAccounts,
  }) {
    return storeInternalTransferMyAccounts(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputTransferModel input)? storeLocalTransferMyAccounts,
    TResult? Function(InputTransferModel input)?
        storeInternalTransferMyAccounts,
    TResult? Function(InputConfirmTransferModel input)?
        confirmLocalTransferMyAccounts,
    TResult? Function(InputConfirmTransferModel input)?
        confirmInternalTransferMyAccounts,
  }) {
    return storeInternalTransferMyAccounts?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputTransferModel input)? storeLocalTransferMyAccounts,
    TResult Function(InputTransferModel input)? storeInternalTransferMyAccounts,
    TResult Function(InputConfirmTransferModel input)?
        confirmLocalTransferMyAccounts,
    TResult Function(InputConfirmTransferModel input)?
        confirmInternalTransferMyAccounts,
    required TResult orElse(),
  }) {
    if (storeInternalTransferMyAccounts != null) {
      return storeInternalTransferMyAccounts(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreLocalTransferMyAccounts value)
        storeLocalTransferMyAccounts,
    required TResult Function(_StoreInternalTransferMyAccounts value)
        storeInternalTransferMyAccounts,
    required TResult Function(_ConfirmLocalTransferMyAccounts value)
        confirmLocalTransferMyAccounts,
    required TResult Function(_ConfirmInternalTransferMyAccounts value)
        confirmInternalTransferMyAccounts,
  }) {
    return storeInternalTransferMyAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoreLocalTransferMyAccounts value)?
        storeLocalTransferMyAccounts,
    TResult? Function(_StoreInternalTransferMyAccounts value)?
        storeInternalTransferMyAccounts,
    TResult? Function(_ConfirmLocalTransferMyAccounts value)?
        confirmLocalTransferMyAccounts,
    TResult? Function(_ConfirmInternalTransferMyAccounts value)?
        confirmInternalTransferMyAccounts,
  }) {
    return storeInternalTransferMyAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreLocalTransferMyAccounts value)?
        storeLocalTransferMyAccounts,
    TResult Function(_StoreInternalTransferMyAccounts value)?
        storeInternalTransferMyAccounts,
    TResult Function(_ConfirmLocalTransferMyAccounts value)?
        confirmLocalTransferMyAccounts,
    TResult Function(_ConfirmInternalTransferMyAccounts value)?
        confirmInternalTransferMyAccounts,
    required TResult orElse(),
  }) {
    if (storeInternalTransferMyAccounts != null) {
      return storeInternalTransferMyAccounts(this);
    }
    return orElse();
  }
}

abstract class _StoreInternalTransferMyAccounts implements TransferEvent {
  const factory _StoreInternalTransferMyAccounts(
          {required final InputTransferModel input}) =
      _$StoreInternalTransferMyAccountsImpl;

  @override
  InputTransferModel get input;
  @JsonKey(ignore: true)
  _$$StoreInternalTransferMyAccountsImplCopyWith<
          _$StoreInternalTransferMyAccountsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmLocalTransferMyAccountsImplCopyWith<$Res> {
  factory _$$ConfirmLocalTransferMyAccountsImplCopyWith(
          _$ConfirmLocalTransferMyAccountsImpl value,
          $Res Function(_$ConfirmLocalTransferMyAccountsImpl) then) =
      __$$ConfirmLocalTransferMyAccountsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputConfirmTransferModel input});

  $InputConfirmTransferModelCopyWith<$Res> get input;
}

/// @nodoc
class __$$ConfirmLocalTransferMyAccountsImplCopyWithImpl<$Res>
    extends _$TransferEventCopyWithImpl<$Res,
        _$ConfirmLocalTransferMyAccountsImpl>
    implements _$$ConfirmLocalTransferMyAccountsImplCopyWith<$Res> {
  __$$ConfirmLocalTransferMyAccountsImplCopyWithImpl(
      _$ConfirmLocalTransferMyAccountsImpl _value,
      $Res Function(_$ConfirmLocalTransferMyAccountsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$ConfirmLocalTransferMyAccountsImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as InputConfirmTransferModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InputConfirmTransferModelCopyWith<$Res> get input {
    return $InputConfirmTransferModelCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value));
    });
  }
}

/// @nodoc

class _$ConfirmLocalTransferMyAccountsImpl
    implements _ConfirmLocalTransferMyAccounts {
  const _$ConfirmLocalTransferMyAccountsImpl({required this.input});

  @override
  final InputConfirmTransferModel input;

  @override
  String toString() {
    return 'TransferEvent.confirmLocalTransferMyAccounts(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmLocalTransferMyAccountsImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmLocalTransferMyAccountsImplCopyWith<
          _$ConfirmLocalTransferMyAccountsImpl>
      get copyWith => __$$ConfirmLocalTransferMyAccountsImplCopyWithImpl<
          _$ConfirmLocalTransferMyAccountsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputTransferModel input)
        storeLocalTransferMyAccounts,
    required TResult Function(InputTransferModel input)
        storeInternalTransferMyAccounts,
    required TResult Function(InputConfirmTransferModel input)
        confirmLocalTransferMyAccounts,
    required TResult Function(InputConfirmTransferModel input)
        confirmInternalTransferMyAccounts,
  }) {
    return confirmLocalTransferMyAccounts(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputTransferModel input)? storeLocalTransferMyAccounts,
    TResult? Function(InputTransferModel input)?
        storeInternalTransferMyAccounts,
    TResult? Function(InputConfirmTransferModel input)?
        confirmLocalTransferMyAccounts,
    TResult? Function(InputConfirmTransferModel input)?
        confirmInternalTransferMyAccounts,
  }) {
    return confirmLocalTransferMyAccounts?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputTransferModel input)? storeLocalTransferMyAccounts,
    TResult Function(InputTransferModel input)? storeInternalTransferMyAccounts,
    TResult Function(InputConfirmTransferModel input)?
        confirmLocalTransferMyAccounts,
    TResult Function(InputConfirmTransferModel input)?
        confirmInternalTransferMyAccounts,
    required TResult orElse(),
  }) {
    if (confirmLocalTransferMyAccounts != null) {
      return confirmLocalTransferMyAccounts(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreLocalTransferMyAccounts value)
        storeLocalTransferMyAccounts,
    required TResult Function(_StoreInternalTransferMyAccounts value)
        storeInternalTransferMyAccounts,
    required TResult Function(_ConfirmLocalTransferMyAccounts value)
        confirmLocalTransferMyAccounts,
    required TResult Function(_ConfirmInternalTransferMyAccounts value)
        confirmInternalTransferMyAccounts,
  }) {
    return confirmLocalTransferMyAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoreLocalTransferMyAccounts value)?
        storeLocalTransferMyAccounts,
    TResult? Function(_StoreInternalTransferMyAccounts value)?
        storeInternalTransferMyAccounts,
    TResult? Function(_ConfirmLocalTransferMyAccounts value)?
        confirmLocalTransferMyAccounts,
    TResult? Function(_ConfirmInternalTransferMyAccounts value)?
        confirmInternalTransferMyAccounts,
  }) {
    return confirmLocalTransferMyAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreLocalTransferMyAccounts value)?
        storeLocalTransferMyAccounts,
    TResult Function(_StoreInternalTransferMyAccounts value)?
        storeInternalTransferMyAccounts,
    TResult Function(_ConfirmLocalTransferMyAccounts value)?
        confirmLocalTransferMyAccounts,
    TResult Function(_ConfirmInternalTransferMyAccounts value)?
        confirmInternalTransferMyAccounts,
    required TResult orElse(),
  }) {
    if (confirmLocalTransferMyAccounts != null) {
      return confirmLocalTransferMyAccounts(this);
    }
    return orElse();
  }
}

abstract class _ConfirmLocalTransferMyAccounts implements TransferEvent {
  const factory _ConfirmLocalTransferMyAccounts(
          {required final InputConfirmTransferModel input}) =
      _$ConfirmLocalTransferMyAccountsImpl;

  @override
  InputConfirmTransferModel get input;
  @JsonKey(ignore: true)
  _$$ConfirmLocalTransferMyAccountsImplCopyWith<
          _$ConfirmLocalTransferMyAccountsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmInternalTransferMyAccountsImplCopyWith<$Res> {
  factory _$$ConfirmInternalTransferMyAccountsImplCopyWith(
          _$ConfirmInternalTransferMyAccountsImpl value,
          $Res Function(_$ConfirmInternalTransferMyAccountsImpl) then) =
      __$$ConfirmInternalTransferMyAccountsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputConfirmTransferModel input});

  $InputConfirmTransferModelCopyWith<$Res> get input;
}

/// @nodoc
class __$$ConfirmInternalTransferMyAccountsImplCopyWithImpl<$Res>
    extends _$TransferEventCopyWithImpl<$Res,
        _$ConfirmInternalTransferMyAccountsImpl>
    implements _$$ConfirmInternalTransferMyAccountsImplCopyWith<$Res> {
  __$$ConfirmInternalTransferMyAccountsImplCopyWithImpl(
      _$ConfirmInternalTransferMyAccountsImpl _value,
      $Res Function(_$ConfirmInternalTransferMyAccountsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$ConfirmInternalTransferMyAccountsImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as InputConfirmTransferModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InputConfirmTransferModelCopyWith<$Res> get input {
    return $InputConfirmTransferModelCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value));
    });
  }
}

/// @nodoc

class _$ConfirmInternalTransferMyAccountsImpl
    implements _ConfirmInternalTransferMyAccounts {
  const _$ConfirmInternalTransferMyAccountsImpl({required this.input});

  @override
  final InputConfirmTransferModel input;

  @override
  String toString() {
    return 'TransferEvent.confirmInternalTransferMyAccounts(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmInternalTransferMyAccountsImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmInternalTransferMyAccountsImplCopyWith<
          _$ConfirmInternalTransferMyAccountsImpl>
      get copyWith => __$$ConfirmInternalTransferMyAccountsImplCopyWithImpl<
          _$ConfirmInternalTransferMyAccountsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputTransferModel input)
        storeLocalTransferMyAccounts,
    required TResult Function(InputTransferModel input)
        storeInternalTransferMyAccounts,
    required TResult Function(InputConfirmTransferModel input)
        confirmLocalTransferMyAccounts,
    required TResult Function(InputConfirmTransferModel input)
        confirmInternalTransferMyAccounts,
  }) {
    return confirmInternalTransferMyAccounts(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputTransferModel input)? storeLocalTransferMyAccounts,
    TResult? Function(InputTransferModel input)?
        storeInternalTransferMyAccounts,
    TResult? Function(InputConfirmTransferModel input)?
        confirmLocalTransferMyAccounts,
    TResult? Function(InputConfirmTransferModel input)?
        confirmInternalTransferMyAccounts,
  }) {
    return confirmInternalTransferMyAccounts?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputTransferModel input)? storeLocalTransferMyAccounts,
    TResult Function(InputTransferModel input)? storeInternalTransferMyAccounts,
    TResult Function(InputConfirmTransferModel input)?
        confirmLocalTransferMyAccounts,
    TResult Function(InputConfirmTransferModel input)?
        confirmInternalTransferMyAccounts,
    required TResult orElse(),
  }) {
    if (confirmInternalTransferMyAccounts != null) {
      return confirmInternalTransferMyAccounts(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreLocalTransferMyAccounts value)
        storeLocalTransferMyAccounts,
    required TResult Function(_StoreInternalTransferMyAccounts value)
        storeInternalTransferMyAccounts,
    required TResult Function(_ConfirmLocalTransferMyAccounts value)
        confirmLocalTransferMyAccounts,
    required TResult Function(_ConfirmInternalTransferMyAccounts value)
        confirmInternalTransferMyAccounts,
  }) {
    return confirmInternalTransferMyAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoreLocalTransferMyAccounts value)?
        storeLocalTransferMyAccounts,
    TResult? Function(_StoreInternalTransferMyAccounts value)?
        storeInternalTransferMyAccounts,
    TResult? Function(_ConfirmLocalTransferMyAccounts value)?
        confirmLocalTransferMyAccounts,
    TResult? Function(_ConfirmInternalTransferMyAccounts value)?
        confirmInternalTransferMyAccounts,
  }) {
    return confirmInternalTransferMyAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreLocalTransferMyAccounts value)?
        storeLocalTransferMyAccounts,
    TResult Function(_StoreInternalTransferMyAccounts value)?
        storeInternalTransferMyAccounts,
    TResult Function(_ConfirmLocalTransferMyAccounts value)?
        confirmLocalTransferMyAccounts,
    TResult Function(_ConfirmInternalTransferMyAccounts value)?
        confirmInternalTransferMyAccounts,
    required TResult orElse(),
  }) {
    if (confirmInternalTransferMyAccounts != null) {
      return confirmInternalTransferMyAccounts(this);
    }
    return orElse();
  }
}

abstract class _ConfirmInternalTransferMyAccounts implements TransferEvent {
  const factory _ConfirmInternalTransferMyAccounts(
          {required final InputConfirmTransferModel input}) =
      _$ConfirmInternalTransferMyAccountsImpl;

  @override
  InputConfirmTransferModel get input;
  @JsonKey(ignore: true)
  _$$ConfirmInternalTransferMyAccountsImplCopyWith<
          _$ConfirmInternalTransferMyAccountsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransferState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseModel<StoreTransferModel> store)
        successStoreLocalTransfer,
    required TResult Function(ResponseModel<StoreTransferModel> store)
        successStoreInternalTransfer,
    required TResult Function(ResponseModel<ConfirmTransferModel> confirm)
        successConfirmInternalTransfer,
    required TResult Function(ResponseModel<ConfirmTransferModel> confirm)
        successConfirmLocalTransfer,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<StoreTransferModel> store)?
        successStoreLocalTransfer,
    TResult? Function(ResponseModel<StoreTransferModel> store)?
        successStoreInternalTransfer,
    TResult? Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmInternalTransfer,
    TResult? Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmLocalTransfer,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<StoreTransferModel> store)?
        successStoreLocalTransfer,
    TResult Function(ResponseModel<StoreTransferModel> store)?
        successStoreInternalTransfer,
    TResult Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmInternalTransfer,
    TResult Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmLocalTransfer,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessStoreLocalTransfer value)
        successStoreLocalTransfer,
    required TResult Function(_SuccessStoreInternalTransfer value)
        successStoreInternalTransfer,
    required TResult Function(_SuccessConfirmInternalTransfer value)
        successConfirmInternalTransfer,
    required TResult Function(_SuccessConfirmLocalTransfer value)
        successConfirmLocalTransfer,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessStoreLocalTransfer value)?
        successStoreLocalTransfer,
    TResult? Function(_SuccessStoreInternalTransfer value)?
        successStoreInternalTransfer,
    TResult? Function(_SuccessConfirmInternalTransfer value)?
        successConfirmInternalTransfer,
    TResult? Function(_SuccessConfirmLocalTransfer value)?
        successConfirmLocalTransfer,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessStoreLocalTransfer value)?
        successStoreLocalTransfer,
    TResult Function(_SuccessStoreInternalTransfer value)?
        successStoreInternalTransfer,
    TResult Function(_SuccessConfirmInternalTransfer value)?
        successConfirmInternalTransfer,
    TResult Function(_SuccessConfirmLocalTransfer value)?
        successConfirmLocalTransfer,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferStateCopyWith<$Res> {
  factory $TransferStateCopyWith(
          TransferState value, $Res Function(TransferState) then) =
      _$TransferStateCopyWithImpl<$Res, TransferState>;
}

/// @nodoc
class _$TransferStateCopyWithImpl<$Res, $Val extends TransferState>
    implements $TransferStateCopyWith<$Res> {
  _$TransferStateCopyWithImpl(this._value, this._then);

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
    extends _$TransferStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'TransferState.initial()';
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
    required TResult Function(ResponseModel<StoreTransferModel> store)
        successStoreLocalTransfer,
    required TResult Function(ResponseModel<StoreTransferModel> store)
        successStoreInternalTransfer,
    required TResult Function(ResponseModel<ConfirmTransferModel> confirm)
        successConfirmInternalTransfer,
    required TResult Function(ResponseModel<ConfirmTransferModel> confirm)
        successConfirmLocalTransfer,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<StoreTransferModel> store)?
        successStoreLocalTransfer,
    TResult? Function(ResponseModel<StoreTransferModel> store)?
        successStoreInternalTransfer,
    TResult? Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmInternalTransfer,
    TResult? Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmLocalTransfer,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<StoreTransferModel> store)?
        successStoreLocalTransfer,
    TResult Function(ResponseModel<StoreTransferModel> store)?
        successStoreInternalTransfer,
    TResult Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmInternalTransfer,
    TResult Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmLocalTransfer,
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
    required TResult Function(_SuccessStoreLocalTransfer value)
        successStoreLocalTransfer,
    required TResult Function(_SuccessStoreInternalTransfer value)
        successStoreInternalTransfer,
    required TResult Function(_SuccessConfirmInternalTransfer value)
        successConfirmInternalTransfer,
    required TResult Function(_SuccessConfirmLocalTransfer value)
        successConfirmLocalTransfer,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessStoreLocalTransfer value)?
        successStoreLocalTransfer,
    TResult? Function(_SuccessStoreInternalTransfer value)?
        successStoreInternalTransfer,
    TResult? Function(_SuccessConfirmInternalTransfer value)?
        successConfirmInternalTransfer,
    TResult? Function(_SuccessConfirmLocalTransfer value)?
        successConfirmLocalTransfer,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessStoreLocalTransfer value)?
        successStoreLocalTransfer,
    TResult Function(_SuccessStoreInternalTransfer value)?
        successStoreInternalTransfer,
    TResult Function(_SuccessConfirmInternalTransfer value)?
        successConfirmInternalTransfer,
    TResult Function(_SuccessConfirmLocalTransfer value)?
        successConfirmLocalTransfer,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TransferState {
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
    extends _$TransferStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'TransferState.loading()';
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
    required TResult Function(ResponseModel<StoreTransferModel> store)
        successStoreLocalTransfer,
    required TResult Function(ResponseModel<StoreTransferModel> store)
        successStoreInternalTransfer,
    required TResult Function(ResponseModel<ConfirmTransferModel> confirm)
        successConfirmInternalTransfer,
    required TResult Function(ResponseModel<ConfirmTransferModel> confirm)
        successConfirmLocalTransfer,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<StoreTransferModel> store)?
        successStoreLocalTransfer,
    TResult? Function(ResponseModel<StoreTransferModel> store)?
        successStoreInternalTransfer,
    TResult? Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmInternalTransfer,
    TResult? Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmLocalTransfer,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<StoreTransferModel> store)?
        successStoreLocalTransfer,
    TResult Function(ResponseModel<StoreTransferModel> store)?
        successStoreInternalTransfer,
    TResult Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmInternalTransfer,
    TResult Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmLocalTransfer,
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
    required TResult Function(_SuccessStoreLocalTransfer value)
        successStoreLocalTransfer,
    required TResult Function(_SuccessStoreInternalTransfer value)
        successStoreInternalTransfer,
    required TResult Function(_SuccessConfirmInternalTransfer value)
        successConfirmInternalTransfer,
    required TResult Function(_SuccessConfirmLocalTransfer value)
        successConfirmLocalTransfer,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessStoreLocalTransfer value)?
        successStoreLocalTransfer,
    TResult? Function(_SuccessStoreInternalTransfer value)?
        successStoreInternalTransfer,
    TResult? Function(_SuccessConfirmInternalTransfer value)?
        successConfirmInternalTransfer,
    TResult? Function(_SuccessConfirmLocalTransfer value)?
        successConfirmLocalTransfer,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessStoreLocalTransfer value)?
        successStoreLocalTransfer,
    TResult Function(_SuccessStoreInternalTransfer value)?
        successStoreInternalTransfer,
    TResult Function(_SuccessConfirmInternalTransfer value)?
        successConfirmInternalTransfer,
    TResult Function(_SuccessConfirmLocalTransfer value)?
        successConfirmLocalTransfer,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TransferState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessStoreLocalTransferImplCopyWith<$Res> {
  factory _$$SuccessStoreLocalTransferImplCopyWith(
          _$SuccessStoreLocalTransferImpl value,
          $Res Function(_$SuccessStoreLocalTransferImpl) then) =
      __$$SuccessStoreLocalTransferImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseModel<StoreTransferModel> store});

  $ResponseModelCopyWith<StoreTransferModel, $Res> get store;
}

/// @nodoc
class __$$SuccessStoreLocalTransferImplCopyWithImpl<$Res>
    extends _$TransferStateCopyWithImpl<$Res, _$SuccessStoreLocalTransferImpl>
    implements _$$SuccessStoreLocalTransferImplCopyWith<$Res> {
  __$$SuccessStoreLocalTransferImplCopyWithImpl(
      _$SuccessStoreLocalTransferImpl _value,
      $Res Function(_$SuccessStoreLocalTransferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? store = null,
  }) {
    return _then(_$SuccessStoreLocalTransferImpl(
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as ResponseModel<StoreTransferModel>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<StoreTransferModel, $Res> get store {
    return $ResponseModelCopyWith<StoreTransferModel, $Res>(_value.store,
        (value) {
      return _then(_value.copyWith(store: value));
    });
  }
}

/// @nodoc

class _$SuccessStoreLocalTransferImpl implements _SuccessStoreLocalTransfer {
  const _$SuccessStoreLocalTransferImpl({required this.store});

  @override
  final ResponseModel<StoreTransferModel> store;

  @override
  String toString() {
    return 'TransferState.successStoreLocalTransfer(store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStoreLocalTransferImpl &&
            (identical(other.store, store) || other.store == store));
  }

  @override
  int get hashCode => Object.hash(runtimeType, store);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStoreLocalTransferImplCopyWith<_$SuccessStoreLocalTransferImpl>
      get copyWith => __$$SuccessStoreLocalTransferImplCopyWithImpl<
          _$SuccessStoreLocalTransferImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseModel<StoreTransferModel> store)
        successStoreLocalTransfer,
    required TResult Function(ResponseModel<StoreTransferModel> store)
        successStoreInternalTransfer,
    required TResult Function(ResponseModel<ConfirmTransferModel> confirm)
        successConfirmInternalTransfer,
    required TResult Function(ResponseModel<ConfirmTransferModel> confirm)
        successConfirmLocalTransfer,
    required TResult Function(String message) error,
  }) {
    return successStoreLocalTransfer(store);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<StoreTransferModel> store)?
        successStoreLocalTransfer,
    TResult? Function(ResponseModel<StoreTransferModel> store)?
        successStoreInternalTransfer,
    TResult? Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmInternalTransfer,
    TResult? Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmLocalTransfer,
    TResult? Function(String message)? error,
  }) {
    return successStoreLocalTransfer?.call(store);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<StoreTransferModel> store)?
        successStoreLocalTransfer,
    TResult Function(ResponseModel<StoreTransferModel> store)?
        successStoreInternalTransfer,
    TResult Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmInternalTransfer,
    TResult Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmLocalTransfer,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successStoreLocalTransfer != null) {
      return successStoreLocalTransfer(store);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessStoreLocalTransfer value)
        successStoreLocalTransfer,
    required TResult Function(_SuccessStoreInternalTransfer value)
        successStoreInternalTransfer,
    required TResult Function(_SuccessConfirmInternalTransfer value)
        successConfirmInternalTransfer,
    required TResult Function(_SuccessConfirmLocalTransfer value)
        successConfirmLocalTransfer,
    required TResult Function(_Error value) error,
  }) {
    return successStoreLocalTransfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessStoreLocalTransfer value)?
        successStoreLocalTransfer,
    TResult? Function(_SuccessStoreInternalTransfer value)?
        successStoreInternalTransfer,
    TResult? Function(_SuccessConfirmInternalTransfer value)?
        successConfirmInternalTransfer,
    TResult? Function(_SuccessConfirmLocalTransfer value)?
        successConfirmLocalTransfer,
    TResult? Function(_Error value)? error,
  }) {
    return successStoreLocalTransfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessStoreLocalTransfer value)?
        successStoreLocalTransfer,
    TResult Function(_SuccessStoreInternalTransfer value)?
        successStoreInternalTransfer,
    TResult Function(_SuccessConfirmInternalTransfer value)?
        successConfirmInternalTransfer,
    TResult Function(_SuccessConfirmLocalTransfer value)?
        successConfirmLocalTransfer,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successStoreLocalTransfer != null) {
      return successStoreLocalTransfer(this);
    }
    return orElse();
  }
}

abstract class _SuccessStoreLocalTransfer implements TransferState {
  const factory _SuccessStoreLocalTransfer(
          {required final ResponseModel<StoreTransferModel> store}) =
      _$SuccessStoreLocalTransferImpl;

  ResponseModel<StoreTransferModel> get store;
  @JsonKey(ignore: true)
  _$$SuccessStoreLocalTransferImplCopyWith<_$SuccessStoreLocalTransferImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessStoreInternalTransferImplCopyWith<$Res> {
  factory _$$SuccessStoreInternalTransferImplCopyWith(
          _$SuccessStoreInternalTransferImpl value,
          $Res Function(_$SuccessStoreInternalTransferImpl) then) =
      __$$SuccessStoreInternalTransferImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseModel<StoreTransferModel> store});

  $ResponseModelCopyWith<StoreTransferModel, $Res> get store;
}

/// @nodoc
class __$$SuccessStoreInternalTransferImplCopyWithImpl<$Res>
    extends _$TransferStateCopyWithImpl<$Res,
        _$SuccessStoreInternalTransferImpl>
    implements _$$SuccessStoreInternalTransferImplCopyWith<$Res> {
  __$$SuccessStoreInternalTransferImplCopyWithImpl(
      _$SuccessStoreInternalTransferImpl _value,
      $Res Function(_$SuccessStoreInternalTransferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? store = null,
  }) {
    return _then(_$SuccessStoreInternalTransferImpl(
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as ResponseModel<StoreTransferModel>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<StoreTransferModel, $Res> get store {
    return $ResponseModelCopyWith<StoreTransferModel, $Res>(_value.store,
        (value) {
      return _then(_value.copyWith(store: value));
    });
  }
}

/// @nodoc

class _$SuccessStoreInternalTransferImpl
    implements _SuccessStoreInternalTransfer {
  const _$SuccessStoreInternalTransferImpl({required this.store});

  @override
  final ResponseModel<StoreTransferModel> store;

  @override
  String toString() {
    return 'TransferState.successStoreInternalTransfer(store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStoreInternalTransferImpl &&
            (identical(other.store, store) || other.store == store));
  }

  @override
  int get hashCode => Object.hash(runtimeType, store);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStoreInternalTransferImplCopyWith<
          _$SuccessStoreInternalTransferImpl>
      get copyWith => __$$SuccessStoreInternalTransferImplCopyWithImpl<
          _$SuccessStoreInternalTransferImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseModel<StoreTransferModel> store)
        successStoreLocalTransfer,
    required TResult Function(ResponseModel<StoreTransferModel> store)
        successStoreInternalTransfer,
    required TResult Function(ResponseModel<ConfirmTransferModel> confirm)
        successConfirmInternalTransfer,
    required TResult Function(ResponseModel<ConfirmTransferModel> confirm)
        successConfirmLocalTransfer,
    required TResult Function(String message) error,
  }) {
    return successStoreInternalTransfer(store);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<StoreTransferModel> store)?
        successStoreLocalTransfer,
    TResult? Function(ResponseModel<StoreTransferModel> store)?
        successStoreInternalTransfer,
    TResult? Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmInternalTransfer,
    TResult? Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmLocalTransfer,
    TResult? Function(String message)? error,
  }) {
    return successStoreInternalTransfer?.call(store);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<StoreTransferModel> store)?
        successStoreLocalTransfer,
    TResult Function(ResponseModel<StoreTransferModel> store)?
        successStoreInternalTransfer,
    TResult Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmInternalTransfer,
    TResult Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmLocalTransfer,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successStoreInternalTransfer != null) {
      return successStoreInternalTransfer(store);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessStoreLocalTransfer value)
        successStoreLocalTransfer,
    required TResult Function(_SuccessStoreInternalTransfer value)
        successStoreInternalTransfer,
    required TResult Function(_SuccessConfirmInternalTransfer value)
        successConfirmInternalTransfer,
    required TResult Function(_SuccessConfirmLocalTransfer value)
        successConfirmLocalTransfer,
    required TResult Function(_Error value) error,
  }) {
    return successStoreInternalTransfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessStoreLocalTransfer value)?
        successStoreLocalTransfer,
    TResult? Function(_SuccessStoreInternalTransfer value)?
        successStoreInternalTransfer,
    TResult? Function(_SuccessConfirmInternalTransfer value)?
        successConfirmInternalTransfer,
    TResult? Function(_SuccessConfirmLocalTransfer value)?
        successConfirmLocalTransfer,
    TResult? Function(_Error value)? error,
  }) {
    return successStoreInternalTransfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessStoreLocalTransfer value)?
        successStoreLocalTransfer,
    TResult Function(_SuccessStoreInternalTransfer value)?
        successStoreInternalTransfer,
    TResult Function(_SuccessConfirmInternalTransfer value)?
        successConfirmInternalTransfer,
    TResult Function(_SuccessConfirmLocalTransfer value)?
        successConfirmLocalTransfer,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successStoreInternalTransfer != null) {
      return successStoreInternalTransfer(this);
    }
    return orElse();
  }
}

abstract class _SuccessStoreInternalTransfer implements TransferState {
  const factory _SuccessStoreInternalTransfer(
          {required final ResponseModel<StoreTransferModel> store}) =
      _$SuccessStoreInternalTransferImpl;

  ResponseModel<StoreTransferModel> get store;
  @JsonKey(ignore: true)
  _$$SuccessStoreInternalTransferImplCopyWith<
          _$SuccessStoreInternalTransferImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessConfirmInternalTransferImplCopyWith<$Res> {
  factory _$$SuccessConfirmInternalTransferImplCopyWith(
          _$SuccessConfirmInternalTransferImpl value,
          $Res Function(_$SuccessConfirmInternalTransferImpl) then) =
      __$$SuccessConfirmInternalTransferImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseModel<ConfirmTransferModel> confirm});

  $ResponseModelCopyWith<ConfirmTransferModel, $Res> get confirm;
}

/// @nodoc
class __$$SuccessConfirmInternalTransferImplCopyWithImpl<$Res>
    extends _$TransferStateCopyWithImpl<$Res,
        _$SuccessConfirmInternalTransferImpl>
    implements _$$SuccessConfirmInternalTransferImplCopyWith<$Res> {
  __$$SuccessConfirmInternalTransferImplCopyWithImpl(
      _$SuccessConfirmInternalTransferImpl _value,
      $Res Function(_$SuccessConfirmInternalTransferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirm = null,
  }) {
    return _then(_$SuccessConfirmInternalTransferImpl(
      confirm: null == confirm
          ? _value.confirm
          : confirm // ignore: cast_nullable_to_non_nullable
              as ResponseModel<ConfirmTransferModel>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<ConfirmTransferModel, $Res> get confirm {
    return $ResponseModelCopyWith<ConfirmTransferModel, $Res>(_value.confirm,
        (value) {
      return _then(_value.copyWith(confirm: value));
    });
  }
}

/// @nodoc

class _$SuccessConfirmInternalTransferImpl
    implements _SuccessConfirmInternalTransfer {
  const _$SuccessConfirmInternalTransferImpl({required this.confirm});

  @override
  final ResponseModel<ConfirmTransferModel> confirm;

  @override
  String toString() {
    return 'TransferState.successConfirmInternalTransfer(confirm: $confirm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessConfirmInternalTransferImpl &&
            (identical(other.confirm, confirm) || other.confirm == confirm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessConfirmInternalTransferImplCopyWith<
          _$SuccessConfirmInternalTransferImpl>
      get copyWith => __$$SuccessConfirmInternalTransferImplCopyWithImpl<
          _$SuccessConfirmInternalTransferImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseModel<StoreTransferModel> store)
        successStoreLocalTransfer,
    required TResult Function(ResponseModel<StoreTransferModel> store)
        successStoreInternalTransfer,
    required TResult Function(ResponseModel<ConfirmTransferModel> confirm)
        successConfirmInternalTransfer,
    required TResult Function(ResponseModel<ConfirmTransferModel> confirm)
        successConfirmLocalTransfer,
    required TResult Function(String message) error,
  }) {
    return successConfirmInternalTransfer(confirm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<StoreTransferModel> store)?
        successStoreLocalTransfer,
    TResult? Function(ResponseModel<StoreTransferModel> store)?
        successStoreInternalTransfer,
    TResult? Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmInternalTransfer,
    TResult? Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmLocalTransfer,
    TResult? Function(String message)? error,
  }) {
    return successConfirmInternalTransfer?.call(confirm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<StoreTransferModel> store)?
        successStoreLocalTransfer,
    TResult Function(ResponseModel<StoreTransferModel> store)?
        successStoreInternalTransfer,
    TResult Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmInternalTransfer,
    TResult Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmLocalTransfer,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successConfirmInternalTransfer != null) {
      return successConfirmInternalTransfer(confirm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessStoreLocalTransfer value)
        successStoreLocalTransfer,
    required TResult Function(_SuccessStoreInternalTransfer value)
        successStoreInternalTransfer,
    required TResult Function(_SuccessConfirmInternalTransfer value)
        successConfirmInternalTransfer,
    required TResult Function(_SuccessConfirmLocalTransfer value)
        successConfirmLocalTransfer,
    required TResult Function(_Error value) error,
  }) {
    return successConfirmInternalTransfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessStoreLocalTransfer value)?
        successStoreLocalTransfer,
    TResult? Function(_SuccessStoreInternalTransfer value)?
        successStoreInternalTransfer,
    TResult? Function(_SuccessConfirmInternalTransfer value)?
        successConfirmInternalTransfer,
    TResult? Function(_SuccessConfirmLocalTransfer value)?
        successConfirmLocalTransfer,
    TResult? Function(_Error value)? error,
  }) {
    return successConfirmInternalTransfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessStoreLocalTransfer value)?
        successStoreLocalTransfer,
    TResult Function(_SuccessStoreInternalTransfer value)?
        successStoreInternalTransfer,
    TResult Function(_SuccessConfirmInternalTransfer value)?
        successConfirmInternalTransfer,
    TResult Function(_SuccessConfirmLocalTransfer value)?
        successConfirmLocalTransfer,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successConfirmInternalTransfer != null) {
      return successConfirmInternalTransfer(this);
    }
    return orElse();
  }
}

abstract class _SuccessConfirmInternalTransfer implements TransferState {
  const factory _SuccessConfirmInternalTransfer(
          {required final ResponseModel<ConfirmTransferModel> confirm}) =
      _$SuccessConfirmInternalTransferImpl;

  ResponseModel<ConfirmTransferModel> get confirm;
  @JsonKey(ignore: true)
  _$$SuccessConfirmInternalTransferImplCopyWith<
          _$SuccessConfirmInternalTransferImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessConfirmLocalTransferImplCopyWith<$Res> {
  factory _$$SuccessConfirmLocalTransferImplCopyWith(
          _$SuccessConfirmLocalTransferImpl value,
          $Res Function(_$SuccessConfirmLocalTransferImpl) then) =
      __$$SuccessConfirmLocalTransferImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseModel<ConfirmTransferModel> confirm});

  $ResponseModelCopyWith<ConfirmTransferModel, $Res> get confirm;
}

/// @nodoc
class __$$SuccessConfirmLocalTransferImplCopyWithImpl<$Res>
    extends _$TransferStateCopyWithImpl<$Res, _$SuccessConfirmLocalTransferImpl>
    implements _$$SuccessConfirmLocalTransferImplCopyWith<$Res> {
  __$$SuccessConfirmLocalTransferImplCopyWithImpl(
      _$SuccessConfirmLocalTransferImpl _value,
      $Res Function(_$SuccessConfirmLocalTransferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirm = null,
  }) {
    return _then(_$SuccessConfirmLocalTransferImpl(
      confirm: null == confirm
          ? _value.confirm
          : confirm // ignore: cast_nullable_to_non_nullable
              as ResponseModel<ConfirmTransferModel>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<ConfirmTransferModel, $Res> get confirm {
    return $ResponseModelCopyWith<ConfirmTransferModel, $Res>(_value.confirm,
        (value) {
      return _then(_value.copyWith(confirm: value));
    });
  }
}

/// @nodoc

class _$SuccessConfirmLocalTransferImpl
    implements _SuccessConfirmLocalTransfer {
  const _$SuccessConfirmLocalTransferImpl({required this.confirm});

  @override
  final ResponseModel<ConfirmTransferModel> confirm;

  @override
  String toString() {
    return 'TransferState.successConfirmLocalTransfer(confirm: $confirm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessConfirmLocalTransferImpl &&
            (identical(other.confirm, confirm) || other.confirm == confirm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessConfirmLocalTransferImplCopyWith<_$SuccessConfirmLocalTransferImpl>
      get copyWith => __$$SuccessConfirmLocalTransferImplCopyWithImpl<
          _$SuccessConfirmLocalTransferImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseModel<StoreTransferModel> store)
        successStoreLocalTransfer,
    required TResult Function(ResponseModel<StoreTransferModel> store)
        successStoreInternalTransfer,
    required TResult Function(ResponseModel<ConfirmTransferModel> confirm)
        successConfirmInternalTransfer,
    required TResult Function(ResponseModel<ConfirmTransferModel> confirm)
        successConfirmLocalTransfer,
    required TResult Function(String message) error,
  }) {
    return successConfirmLocalTransfer(confirm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<StoreTransferModel> store)?
        successStoreLocalTransfer,
    TResult? Function(ResponseModel<StoreTransferModel> store)?
        successStoreInternalTransfer,
    TResult? Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmInternalTransfer,
    TResult? Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmLocalTransfer,
    TResult? Function(String message)? error,
  }) {
    return successConfirmLocalTransfer?.call(confirm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<StoreTransferModel> store)?
        successStoreLocalTransfer,
    TResult Function(ResponseModel<StoreTransferModel> store)?
        successStoreInternalTransfer,
    TResult Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmInternalTransfer,
    TResult Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmLocalTransfer,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successConfirmLocalTransfer != null) {
      return successConfirmLocalTransfer(confirm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessStoreLocalTransfer value)
        successStoreLocalTransfer,
    required TResult Function(_SuccessStoreInternalTransfer value)
        successStoreInternalTransfer,
    required TResult Function(_SuccessConfirmInternalTransfer value)
        successConfirmInternalTransfer,
    required TResult Function(_SuccessConfirmLocalTransfer value)
        successConfirmLocalTransfer,
    required TResult Function(_Error value) error,
  }) {
    return successConfirmLocalTransfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessStoreLocalTransfer value)?
        successStoreLocalTransfer,
    TResult? Function(_SuccessStoreInternalTransfer value)?
        successStoreInternalTransfer,
    TResult? Function(_SuccessConfirmInternalTransfer value)?
        successConfirmInternalTransfer,
    TResult? Function(_SuccessConfirmLocalTransfer value)?
        successConfirmLocalTransfer,
    TResult? Function(_Error value)? error,
  }) {
    return successConfirmLocalTransfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessStoreLocalTransfer value)?
        successStoreLocalTransfer,
    TResult Function(_SuccessStoreInternalTransfer value)?
        successStoreInternalTransfer,
    TResult Function(_SuccessConfirmInternalTransfer value)?
        successConfirmInternalTransfer,
    TResult Function(_SuccessConfirmLocalTransfer value)?
        successConfirmLocalTransfer,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successConfirmLocalTransfer != null) {
      return successConfirmLocalTransfer(this);
    }
    return orElse();
  }
}

abstract class _SuccessConfirmLocalTransfer implements TransferState {
  const factory _SuccessConfirmLocalTransfer(
          {required final ResponseModel<ConfirmTransferModel> confirm}) =
      _$SuccessConfirmLocalTransferImpl;

  ResponseModel<ConfirmTransferModel> get confirm;
  @JsonKey(ignore: true)
  _$$SuccessConfirmLocalTransferImplCopyWith<_$SuccessConfirmLocalTransferImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$TransferStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'TransferState.error(message: $message)';
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
    required TResult Function(ResponseModel<StoreTransferModel> store)
        successStoreLocalTransfer,
    required TResult Function(ResponseModel<StoreTransferModel> store)
        successStoreInternalTransfer,
    required TResult Function(ResponseModel<ConfirmTransferModel> confirm)
        successConfirmInternalTransfer,
    required TResult Function(ResponseModel<ConfirmTransferModel> confirm)
        successConfirmLocalTransfer,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<StoreTransferModel> store)?
        successStoreLocalTransfer,
    TResult? Function(ResponseModel<StoreTransferModel> store)?
        successStoreInternalTransfer,
    TResult? Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmInternalTransfer,
    TResult? Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmLocalTransfer,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<StoreTransferModel> store)?
        successStoreLocalTransfer,
    TResult Function(ResponseModel<StoreTransferModel> store)?
        successStoreInternalTransfer,
    TResult Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmInternalTransfer,
    TResult Function(ResponseModel<ConfirmTransferModel> confirm)?
        successConfirmLocalTransfer,
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
    required TResult Function(_SuccessStoreLocalTransfer value)
        successStoreLocalTransfer,
    required TResult Function(_SuccessStoreInternalTransfer value)
        successStoreInternalTransfer,
    required TResult Function(_SuccessConfirmInternalTransfer value)
        successConfirmInternalTransfer,
    required TResult Function(_SuccessConfirmLocalTransfer value)
        successConfirmLocalTransfer,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessStoreLocalTransfer value)?
        successStoreLocalTransfer,
    TResult? Function(_SuccessStoreInternalTransfer value)?
        successStoreInternalTransfer,
    TResult? Function(_SuccessConfirmInternalTransfer value)?
        successConfirmInternalTransfer,
    TResult? Function(_SuccessConfirmLocalTransfer value)?
        successConfirmLocalTransfer,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessStoreLocalTransfer value)?
        successStoreLocalTransfer,
    TResult Function(_SuccessStoreInternalTransfer value)?
        successStoreInternalTransfer,
    TResult Function(_SuccessConfirmInternalTransfer value)?
        successConfirmInternalTransfer,
    TResult Function(_SuccessConfirmLocalTransfer value)?
        successConfirmLocalTransfer,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TransferState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
