// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestCardEvent {
  Object get request => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestCardModel request) newCard,
    required TResult Function(RequestInactiveCardModel request) inActiveCard,
    required TResult Function(RequestIncreaseWithdrawalValueModel request)
        editWithdrawalCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestCardModel request)? newCard,
    TResult? Function(RequestInactiveCardModel request)? inActiveCard,
    TResult? Function(RequestIncreaseWithdrawalValueModel request)?
        editWithdrawalCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestCardModel request)? newCard,
    TResult Function(RequestInactiveCardModel request)? inActiveCard,
    TResult Function(RequestIncreaseWithdrawalValueModel request)?
        editWithdrawalCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewCard value) newCard,
    required TResult Function(_InActiveCard value) inActiveCard,
    required TResult Function(_EditWithdrawalCard value) editWithdrawalCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewCard value)? newCard,
    TResult? Function(_InActiveCard value)? inActiveCard,
    TResult? Function(_EditWithdrawalCard value)? editWithdrawalCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewCard value)? newCard,
    TResult Function(_InActiveCard value)? inActiveCard,
    TResult Function(_EditWithdrawalCard value)? editWithdrawalCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCardEventCopyWith<$Res> {
  factory $RequestCardEventCopyWith(
          RequestCardEvent value, $Res Function(RequestCardEvent) then) =
      _$RequestCardEventCopyWithImpl<$Res, RequestCardEvent>;
}

/// @nodoc
class _$RequestCardEventCopyWithImpl<$Res, $Val extends RequestCardEvent>
    implements $RequestCardEventCopyWith<$Res> {
  _$RequestCardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewCardImplCopyWith<$Res> {
  factory _$$NewCardImplCopyWith(
          _$NewCardImpl value, $Res Function(_$NewCardImpl) then) =
      __$$NewCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RequestCardModel request});

  $RequestCardModelCopyWith<$Res> get request;
}

/// @nodoc
class __$$NewCardImplCopyWithImpl<$Res>
    extends _$RequestCardEventCopyWithImpl<$Res, _$NewCardImpl>
    implements _$$NewCardImplCopyWith<$Res> {
  __$$NewCardImplCopyWithImpl(
      _$NewCardImpl _value, $Res Function(_$NewCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$NewCardImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestCardModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestCardModelCopyWith<$Res> get request {
    return $RequestCardModelCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$NewCardImpl implements _NewCard {
  const _$NewCardImpl({required this.request});

  @override
  final RequestCardModel request;

  @override
  String toString() {
    return 'RequestCardEvent.newCard(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewCardImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewCardImplCopyWith<_$NewCardImpl> get copyWith =>
      __$$NewCardImplCopyWithImpl<_$NewCardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestCardModel request) newCard,
    required TResult Function(RequestInactiveCardModel request) inActiveCard,
    required TResult Function(RequestIncreaseWithdrawalValueModel request)
        editWithdrawalCard,
  }) {
    return newCard(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestCardModel request)? newCard,
    TResult? Function(RequestInactiveCardModel request)? inActiveCard,
    TResult? Function(RequestIncreaseWithdrawalValueModel request)?
        editWithdrawalCard,
  }) {
    return newCard?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestCardModel request)? newCard,
    TResult Function(RequestInactiveCardModel request)? inActiveCard,
    TResult Function(RequestIncreaseWithdrawalValueModel request)?
        editWithdrawalCard,
    required TResult orElse(),
  }) {
    if (newCard != null) {
      return newCard(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewCard value) newCard,
    required TResult Function(_InActiveCard value) inActiveCard,
    required TResult Function(_EditWithdrawalCard value) editWithdrawalCard,
  }) {
    return newCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewCard value)? newCard,
    TResult? Function(_InActiveCard value)? inActiveCard,
    TResult? Function(_EditWithdrawalCard value)? editWithdrawalCard,
  }) {
    return newCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewCard value)? newCard,
    TResult Function(_InActiveCard value)? inActiveCard,
    TResult Function(_EditWithdrawalCard value)? editWithdrawalCard,
    required TResult orElse(),
  }) {
    if (newCard != null) {
      return newCard(this);
    }
    return orElse();
  }
}

abstract class _NewCard implements RequestCardEvent {
  const factory _NewCard({required final RequestCardModel request}) =
      _$NewCardImpl;

  @override
  RequestCardModel get request;
  @JsonKey(ignore: true)
  _$$NewCardImplCopyWith<_$NewCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InActiveCardImplCopyWith<$Res> {
  factory _$$InActiveCardImplCopyWith(
          _$InActiveCardImpl value, $Res Function(_$InActiveCardImpl) then) =
      __$$InActiveCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RequestInactiveCardModel request});

  $RequestInactiveCardModelCopyWith<$Res> get request;
}

/// @nodoc
class __$$InActiveCardImplCopyWithImpl<$Res>
    extends _$RequestCardEventCopyWithImpl<$Res, _$InActiveCardImpl>
    implements _$$InActiveCardImplCopyWith<$Res> {
  __$$InActiveCardImplCopyWithImpl(
      _$InActiveCardImpl _value, $Res Function(_$InActiveCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$InActiveCardImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestInactiveCardModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestInactiveCardModelCopyWith<$Res> get request {
    return $RequestInactiveCardModelCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$InActiveCardImpl implements _InActiveCard {
  const _$InActiveCardImpl({required this.request});

  @override
  final RequestInactiveCardModel request;

  @override
  String toString() {
    return 'RequestCardEvent.inActiveCard(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InActiveCardImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InActiveCardImplCopyWith<_$InActiveCardImpl> get copyWith =>
      __$$InActiveCardImplCopyWithImpl<_$InActiveCardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestCardModel request) newCard,
    required TResult Function(RequestInactiveCardModel request) inActiveCard,
    required TResult Function(RequestIncreaseWithdrawalValueModel request)
        editWithdrawalCard,
  }) {
    return inActiveCard(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestCardModel request)? newCard,
    TResult? Function(RequestInactiveCardModel request)? inActiveCard,
    TResult? Function(RequestIncreaseWithdrawalValueModel request)?
        editWithdrawalCard,
  }) {
    return inActiveCard?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestCardModel request)? newCard,
    TResult Function(RequestInactiveCardModel request)? inActiveCard,
    TResult Function(RequestIncreaseWithdrawalValueModel request)?
        editWithdrawalCard,
    required TResult orElse(),
  }) {
    if (inActiveCard != null) {
      return inActiveCard(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewCard value) newCard,
    required TResult Function(_InActiveCard value) inActiveCard,
    required TResult Function(_EditWithdrawalCard value) editWithdrawalCard,
  }) {
    return inActiveCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewCard value)? newCard,
    TResult? Function(_InActiveCard value)? inActiveCard,
    TResult? Function(_EditWithdrawalCard value)? editWithdrawalCard,
  }) {
    return inActiveCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewCard value)? newCard,
    TResult Function(_InActiveCard value)? inActiveCard,
    TResult Function(_EditWithdrawalCard value)? editWithdrawalCard,
    required TResult orElse(),
  }) {
    if (inActiveCard != null) {
      return inActiveCard(this);
    }
    return orElse();
  }
}

abstract class _InActiveCard implements RequestCardEvent {
  const factory _InActiveCard(
      {required final RequestInactiveCardModel request}) = _$InActiveCardImpl;

  @override
  RequestInactiveCardModel get request;
  @JsonKey(ignore: true)
  _$$InActiveCardImplCopyWith<_$InActiveCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditWithdrawalCardImplCopyWith<$Res> {
  factory _$$EditWithdrawalCardImplCopyWith(_$EditWithdrawalCardImpl value,
          $Res Function(_$EditWithdrawalCardImpl) then) =
      __$$EditWithdrawalCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RequestIncreaseWithdrawalValueModel request});

  $RequestIncreaseWithdrawalValueModelCopyWith<$Res> get request;
}

/// @nodoc
class __$$EditWithdrawalCardImplCopyWithImpl<$Res>
    extends _$RequestCardEventCopyWithImpl<$Res, _$EditWithdrawalCardImpl>
    implements _$$EditWithdrawalCardImplCopyWith<$Res> {
  __$$EditWithdrawalCardImplCopyWithImpl(_$EditWithdrawalCardImpl _value,
      $Res Function(_$EditWithdrawalCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$EditWithdrawalCardImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestIncreaseWithdrawalValueModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestIncreaseWithdrawalValueModelCopyWith<$Res> get request {
    return $RequestIncreaseWithdrawalValueModelCopyWith<$Res>(_value.request,
        (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$EditWithdrawalCardImpl implements _EditWithdrawalCard {
  const _$EditWithdrawalCardImpl({required this.request});

  @override
  final RequestIncreaseWithdrawalValueModel request;

  @override
  String toString() {
    return 'RequestCardEvent.editWithdrawalCard(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditWithdrawalCardImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditWithdrawalCardImplCopyWith<_$EditWithdrawalCardImpl> get copyWith =>
      __$$EditWithdrawalCardImplCopyWithImpl<_$EditWithdrawalCardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestCardModel request) newCard,
    required TResult Function(RequestInactiveCardModel request) inActiveCard,
    required TResult Function(RequestIncreaseWithdrawalValueModel request)
        editWithdrawalCard,
  }) {
    return editWithdrawalCard(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestCardModel request)? newCard,
    TResult? Function(RequestInactiveCardModel request)? inActiveCard,
    TResult? Function(RequestIncreaseWithdrawalValueModel request)?
        editWithdrawalCard,
  }) {
    return editWithdrawalCard?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestCardModel request)? newCard,
    TResult Function(RequestInactiveCardModel request)? inActiveCard,
    TResult Function(RequestIncreaseWithdrawalValueModel request)?
        editWithdrawalCard,
    required TResult orElse(),
  }) {
    if (editWithdrawalCard != null) {
      return editWithdrawalCard(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewCard value) newCard,
    required TResult Function(_InActiveCard value) inActiveCard,
    required TResult Function(_EditWithdrawalCard value) editWithdrawalCard,
  }) {
    return editWithdrawalCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewCard value)? newCard,
    TResult? Function(_InActiveCard value)? inActiveCard,
    TResult? Function(_EditWithdrawalCard value)? editWithdrawalCard,
  }) {
    return editWithdrawalCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewCard value)? newCard,
    TResult Function(_InActiveCard value)? inActiveCard,
    TResult Function(_EditWithdrawalCard value)? editWithdrawalCard,
    required TResult orElse(),
  }) {
    if (editWithdrawalCard != null) {
      return editWithdrawalCard(this);
    }
    return orElse();
  }
}

abstract class _EditWithdrawalCard implements RequestCardEvent {
  const factory _EditWithdrawalCard(
          {required final RequestIncreaseWithdrawalValueModel request}) =
      _$EditWithdrawalCardImpl;

  @override
  RequestIncreaseWithdrawalValueModel get request;
  @JsonKey(ignore: true)
  _$$EditWithdrawalCardImplCopyWith<_$EditWithdrawalCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RequestCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCardStateCopyWith<$Res> {
  factory $RequestCardStateCopyWith(
          RequestCardState value, $Res Function(RequestCardState) then) =
      _$RequestCardStateCopyWithImpl<$Res, RequestCardState>;
}

/// @nodoc
class _$RequestCardStateCopyWithImpl<$Res, $Val extends RequestCardState>
    implements $RequestCardStateCopyWith<$Res> {
  _$RequestCardStateCopyWithImpl(this._value, this._then);

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
    extends _$RequestCardStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'RequestCardState.initial()';
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
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RequestCardState {
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
    extends _$RequestCardStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'RequestCardState.loading()';
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
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RequestCardState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$RequestCardStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RequestCardState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

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
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements RequestCardState {
  const factory _Success({required final String message}) = _$SuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
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
    extends _$RequestCardStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'RequestCardState.error(message: $message)';
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
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RequestCardState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
