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

  /// Create a copy of RequestCardEvent
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of RequestCardEvent
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of RequestCardEvent
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of RequestCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of RequestCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of RequestCardEvent
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of RequestCardEvent
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of RequestCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of RequestCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of RequestCardEvent
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of RequestCardEvent
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of RequestCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of RequestCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditWithdrawalCardImplCopyWith<_$EditWithdrawalCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RequestCardState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get successMessage => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool hasError,
            String errorMessage, String successMessage, bool success)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, bool hasError, String errorMessage,
            String successMessage, bool success)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool hasError, String errorMessage,
            String successMessage, bool success)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RequestCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestCardStateCopyWith<RequestCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCardStateCopyWith<$Res> {
  factory $RequestCardStateCopyWith(
          RequestCardState value, $Res Function(RequestCardState) then) =
      _$RequestCardStateCopyWithImpl<$Res, RequestCardState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String errorMessage,
      String successMessage,
      bool success});
}

/// @nodoc
class _$RequestCardStateCopyWithImpl<$Res, $Val extends RequestCardState>
    implements $RequestCardStateCopyWith<$Res> {
  _$RequestCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = null,
    Object? successMessage = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RequestCardStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String errorMessage,
      String successMessage,
      bool success});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RequestCardStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = null,
    Object? successMessage = null,
    Object? success = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isLoading = false,
      this.hasError = false,
      this.errorMessage = "",
      this.successMessage = "",
      this.success = false});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasError;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String successMessage;
  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'RequestCardState.initial(isLoading: $isLoading, hasError: $hasError, errorMessage: $errorMessage, successMessage: $successMessage, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, hasError, errorMessage, successMessage, success);

  /// Create a copy of RequestCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool hasError,
            String errorMessage, String successMessage, bool success)
        initial,
  }) {
    return initial(isLoading, hasError, errorMessage, successMessage, success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, bool hasError, String errorMessage,
            String successMessage, bool success)?
        initial,
  }) {
    return initial?.call(
        isLoading, hasError, errorMessage, successMessage, success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool hasError, String errorMessage,
            String successMessage, bool success)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          isLoading, hasError, errorMessage, successMessage, success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RequestCardState {
  const factory _Initial(
      {final bool isLoading,
      final bool hasError,
      final String errorMessage,
      final String successMessage,
      final bool success}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String get errorMessage;
  @override
  String get successMessage;
  @override
  bool get success;

  /// Create a copy of RequestCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
