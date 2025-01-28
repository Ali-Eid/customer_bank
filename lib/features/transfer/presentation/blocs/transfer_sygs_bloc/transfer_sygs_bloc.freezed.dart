// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_sygs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransferSygsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputTransferSygsModel input) transferSYGS,
    required TResult Function() getBanks,
    required TResult Function() getTransferSYGSReason,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputTransferSygsModel input)? transferSYGS,
    TResult? Function()? getBanks,
    TResult? Function()? getTransferSYGSReason,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputTransferSygsModel input)? transferSYGS,
    TResult Function()? getBanks,
    TResult Function()? getTransferSYGSReason,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransferSYGS value) transferSYGS,
    required TResult Function(_GetBanks value) getBanks,
    required TResult Function(_GetTransferSYGSReason value)
        getTransferSYGSReason,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TransferSYGS value)? transferSYGS,
    TResult? Function(_GetBanks value)? getBanks,
    TResult? Function(_GetTransferSYGSReason value)? getTransferSYGSReason,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransferSYGS value)? transferSYGS,
    TResult Function(_GetBanks value)? getBanks,
    TResult Function(_GetTransferSYGSReason value)? getTransferSYGSReason,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferSygsEventCopyWith<$Res> {
  factory $TransferSygsEventCopyWith(
          TransferSygsEvent value, $Res Function(TransferSygsEvent) then) =
      _$TransferSygsEventCopyWithImpl<$Res, TransferSygsEvent>;
}

/// @nodoc
class _$TransferSygsEventCopyWithImpl<$Res, $Val extends TransferSygsEvent>
    implements $TransferSygsEventCopyWith<$Res> {
  _$TransferSygsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TransferSYGSImplCopyWith<$Res> {
  factory _$$TransferSYGSImplCopyWith(
          _$TransferSYGSImpl value, $Res Function(_$TransferSYGSImpl) then) =
      __$$TransferSYGSImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputTransferSygsModel input});

  $InputTransferSygsModelCopyWith<$Res> get input;
}

/// @nodoc
class __$$TransferSYGSImplCopyWithImpl<$Res>
    extends _$TransferSygsEventCopyWithImpl<$Res, _$TransferSYGSImpl>
    implements _$$TransferSYGSImplCopyWith<$Res> {
  __$$TransferSYGSImplCopyWithImpl(
      _$TransferSYGSImpl _value, $Res Function(_$TransferSYGSImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$TransferSYGSImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as InputTransferSygsModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InputTransferSygsModelCopyWith<$Res> get input {
    return $InputTransferSygsModelCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value));
    });
  }
}

/// @nodoc

class _$TransferSYGSImpl implements _TransferSYGS {
  const _$TransferSYGSImpl({required this.input});

  @override
  final InputTransferSygsModel input;

  @override
  String toString() {
    return 'TransferSygsEvent.transferSYGS(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferSYGSImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferSYGSImplCopyWith<_$TransferSYGSImpl> get copyWith =>
      __$$TransferSYGSImplCopyWithImpl<_$TransferSYGSImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputTransferSygsModel input) transferSYGS,
    required TResult Function() getBanks,
    required TResult Function() getTransferSYGSReason,
  }) {
    return transferSYGS(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputTransferSygsModel input)? transferSYGS,
    TResult? Function()? getBanks,
    TResult? Function()? getTransferSYGSReason,
  }) {
    return transferSYGS?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputTransferSygsModel input)? transferSYGS,
    TResult Function()? getBanks,
    TResult Function()? getTransferSYGSReason,
    required TResult orElse(),
  }) {
    if (transferSYGS != null) {
      return transferSYGS(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransferSYGS value) transferSYGS,
    required TResult Function(_GetBanks value) getBanks,
    required TResult Function(_GetTransferSYGSReason value)
        getTransferSYGSReason,
  }) {
    return transferSYGS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TransferSYGS value)? transferSYGS,
    TResult? Function(_GetBanks value)? getBanks,
    TResult? Function(_GetTransferSYGSReason value)? getTransferSYGSReason,
  }) {
    return transferSYGS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransferSYGS value)? transferSYGS,
    TResult Function(_GetBanks value)? getBanks,
    TResult Function(_GetTransferSYGSReason value)? getTransferSYGSReason,
    required TResult orElse(),
  }) {
    if (transferSYGS != null) {
      return transferSYGS(this);
    }
    return orElse();
  }
}

abstract class _TransferSYGS implements TransferSygsEvent {
  const factory _TransferSYGS({required final InputTransferSygsModel input}) =
      _$TransferSYGSImpl;

  InputTransferSygsModel get input;
  @JsonKey(ignore: true)
  _$$TransferSYGSImplCopyWith<_$TransferSYGSImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBanksImplCopyWith<$Res> {
  factory _$$GetBanksImplCopyWith(
          _$GetBanksImpl value, $Res Function(_$GetBanksImpl) then) =
      __$$GetBanksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBanksImplCopyWithImpl<$Res>
    extends _$TransferSygsEventCopyWithImpl<$Res, _$GetBanksImpl>
    implements _$$GetBanksImplCopyWith<$Res> {
  __$$GetBanksImplCopyWithImpl(
      _$GetBanksImpl _value, $Res Function(_$GetBanksImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBanksImpl implements _GetBanks {
  const _$GetBanksImpl();

  @override
  String toString() {
    return 'TransferSygsEvent.getBanks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBanksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputTransferSygsModel input) transferSYGS,
    required TResult Function() getBanks,
    required TResult Function() getTransferSYGSReason,
  }) {
    return getBanks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputTransferSygsModel input)? transferSYGS,
    TResult? Function()? getBanks,
    TResult? Function()? getTransferSYGSReason,
  }) {
    return getBanks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputTransferSygsModel input)? transferSYGS,
    TResult Function()? getBanks,
    TResult Function()? getTransferSYGSReason,
    required TResult orElse(),
  }) {
    if (getBanks != null) {
      return getBanks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransferSYGS value) transferSYGS,
    required TResult Function(_GetBanks value) getBanks,
    required TResult Function(_GetTransferSYGSReason value)
        getTransferSYGSReason,
  }) {
    return getBanks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TransferSYGS value)? transferSYGS,
    TResult? Function(_GetBanks value)? getBanks,
    TResult? Function(_GetTransferSYGSReason value)? getTransferSYGSReason,
  }) {
    return getBanks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransferSYGS value)? transferSYGS,
    TResult Function(_GetBanks value)? getBanks,
    TResult Function(_GetTransferSYGSReason value)? getTransferSYGSReason,
    required TResult orElse(),
  }) {
    if (getBanks != null) {
      return getBanks(this);
    }
    return orElse();
  }
}

abstract class _GetBanks implements TransferSygsEvent {
  const factory _GetBanks() = _$GetBanksImpl;
}

/// @nodoc
abstract class _$$GetTransferSYGSReasonImplCopyWith<$Res> {
  factory _$$GetTransferSYGSReasonImplCopyWith(
          _$GetTransferSYGSReasonImpl value,
          $Res Function(_$GetTransferSYGSReasonImpl) then) =
      __$$GetTransferSYGSReasonImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTransferSYGSReasonImplCopyWithImpl<$Res>
    extends _$TransferSygsEventCopyWithImpl<$Res, _$GetTransferSYGSReasonImpl>
    implements _$$GetTransferSYGSReasonImplCopyWith<$Res> {
  __$$GetTransferSYGSReasonImplCopyWithImpl(_$GetTransferSYGSReasonImpl _value,
      $Res Function(_$GetTransferSYGSReasonImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTransferSYGSReasonImpl implements _GetTransferSYGSReason {
  const _$GetTransferSYGSReasonImpl();

  @override
  String toString() {
    return 'TransferSygsEvent.getTransferSYGSReason()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTransferSYGSReasonImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputTransferSygsModel input) transferSYGS,
    required TResult Function() getBanks,
    required TResult Function() getTransferSYGSReason,
  }) {
    return getTransferSYGSReason();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputTransferSygsModel input)? transferSYGS,
    TResult? Function()? getBanks,
    TResult? Function()? getTransferSYGSReason,
  }) {
    return getTransferSYGSReason?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputTransferSygsModel input)? transferSYGS,
    TResult Function()? getBanks,
    TResult Function()? getTransferSYGSReason,
    required TResult orElse(),
  }) {
    if (getTransferSYGSReason != null) {
      return getTransferSYGSReason();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransferSYGS value) transferSYGS,
    required TResult Function(_GetBanks value) getBanks,
    required TResult Function(_GetTransferSYGSReason value)
        getTransferSYGSReason,
  }) {
    return getTransferSYGSReason(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TransferSYGS value)? transferSYGS,
    TResult? Function(_GetBanks value)? getBanks,
    TResult? Function(_GetTransferSYGSReason value)? getTransferSYGSReason,
  }) {
    return getTransferSYGSReason?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransferSYGS value)? transferSYGS,
    TResult Function(_GetBanks value)? getBanks,
    TResult Function(_GetTransferSYGSReason value)? getTransferSYGSReason,
    required TResult orElse(),
  }) {
    if (getTransferSYGSReason != null) {
      return getTransferSYGSReason(this);
    }
    return orElse();
  }
}

abstract class _GetTransferSYGSReason implements TransferSygsEvent {
  const factory _GetTransferSYGSReason() = _$GetTransferSYGSReasonImpl;
}

/// @nodoc
mixin _$TransferSygsState {
  bool get isLoadingSYGSTransfer => throw _privateConstructorUsedError;
  bool get successSYGSTransfer => throw _privateConstructorUsedError;
  String get messageSuccessSYGSTransfer => throw _privateConstructorUsedError;
  bool get hasErrorSYGSTransfer => throw _privateConstructorUsedError;
  String get messageErrorSYGSTransfer =>
      throw _privateConstructorUsedError; //--------------
  bool get isLoadingGetBanks => throw _privateConstructorUsedError;
  bool get successGetBanks => throw _privateConstructorUsedError;
  bool get hasErrorGetBanks => throw _privateConstructorUsedError;
  String get messageErrorGetBanks => throw _privateConstructorUsedError;
  List<StaticModel> get banks => throw _privateConstructorUsedError; //------
  bool get isLoadingGetTransferReasons => throw _privateConstructorUsedError;
  bool get successGetTransferReasons => throw _privateConstructorUsedError;
  bool get hasErrorGetTransferReasons => throw _privateConstructorUsedError;
  String get messageErrorGetTransferReasons =>
      throw _privateConstructorUsedError;
  List<StaticTextModel> get transferReasons =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoadingSYGSTransfer,
            bool successSYGSTransfer,
            String messageSuccessSYGSTransfer,
            bool hasErrorSYGSTransfer,
            String messageErrorSYGSTransfer,
            bool isLoadingGetBanks,
            bool successGetBanks,
            bool hasErrorGetBanks,
            String messageErrorGetBanks,
            List<StaticModel> banks,
            bool isLoadingGetTransferReasons,
            bool successGetTransferReasons,
            bool hasErrorGetTransferReasons,
            String messageErrorGetTransferReasons,
            List<StaticTextModel> transferReasons)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoadingSYGSTransfer,
            bool successSYGSTransfer,
            String messageSuccessSYGSTransfer,
            bool hasErrorSYGSTransfer,
            String messageErrorSYGSTransfer,
            bool isLoadingGetBanks,
            bool successGetBanks,
            bool hasErrorGetBanks,
            String messageErrorGetBanks,
            List<StaticModel> banks,
            bool isLoadingGetTransferReasons,
            bool successGetTransferReasons,
            bool hasErrorGetTransferReasons,
            String messageErrorGetTransferReasons,
            List<StaticTextModel> transferReasons)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoadingSYGSTransfer,
            bool successSYGSTransfer,
            String messageSuccessSYGSTransfer,
            bool hasErrorSYGSTransfer,
            String messageErrorSYGSTransfer,
            bool isLoadingGetBanks,
            bool successGetBanks,
            bool hasErrorGetBanks,
            String messageErrorGetBanks,
            List<StaticModel> banks,
            bool isLoadingGetTransferReasons,
            bool successGetTransferReasons,
            bool hasErrorGetTransferReasons,
            String messageErrorGetTransferReasons,
            List<StaticTextModel> transferReasons)?
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

  @JsonKey(ignore: true)
  $TransferSygsStateCopyWith<TransferSygsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferSygsStateCopyWith<$Res> {
  factory $TransferSygsStateCopyWith(
          TransferSygsState value, $Res Function(TransferSygsState) then) =
      _$TransferSygsStateCopyWithImpl<$Res, TransferSygsState>;
  @useResult
  $Res call(
      {bool isLoadingSYGSTransfer,
      bool successSYGSTransfer,
      String messageSuccessSYGSTransfer,
      bool hasErrorSYGSTransfer,
      String messageErrorSYGSTransfer,
      bool isLoadingGetBanks,
      bool successGetBanks,
      bool hasErrorGetBanks,
      String messageErrorGetBanks,
      List<StaticModel> banks,
      bool isLoadingGetTransferReasons,
      bool successGetTransferReasons,
      bool hasErrorGetTransferReasons,
      String messageErrorGetTransferReasons,
      List<StaticTextModel> transferReasons});
}

/// @nodoc
class _$TransferSygsStateCopyWithImpl<$Res, $Val extends TransferSygsState>
    implements $TransferSygsStateCopyWith<$Res> {
  _$TransferSygsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingSYGSTransfer = null,
    Object? successSYGSTransfer = null,
    Object? messageSuccessSYGSTransfer = null,
    Object? hasErrorSYGSTransfer = null,
    Object? messageErrorSYGSTransfer = null,
    Object? isLoadingGetBanks = null,
    Object? successGetBanks = null,
    Object? hasErrorGetBanks = null,
    Object? messageErrorGetBanks = null,
    Object? banks = null,
    Object? isLoadingGetTransferReasons = null,
    Object? successGetTransferReasons = null,
    Object? hasErrorGetTransferReasons = null,
    Object? messageErrorGetTransferReasons = null,
    Object? transferReasons = null,
  }) {
    return _then(_value.copyWith(
      isLoadingSYGSTransfer: null == isLoadingSYGSTransfer
          ? _value.isLoadingSYGSTransfer
          : isLoadingSYGSTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      successSYGSTransfer: null == successSYGSTransfer
          ? _value.successSYGSTransfer
          : successSYGSTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      messageSuccessSYGSTransfer: null == messageSuccessSYGSTransfer
          ? _value.messageSuccessSYGSTransfer
          : messageSuccessSYGSTransfer // ignore: cast_nullable_to_non_nullable
              as String,
      hasErrorSYGSTransfer: null == hasErrorSYGSTransfer
          ? _value.hasErrorSYGSTransfer
          : hasErrorSYGSTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      messageErrorSYGSTransfer: null == messageErrorSYGSTransfer
          ? _value.messageErrorSYGSTransfer
          : messageErrorSYGSTransfer // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingGetBanks: null == isLoadingGetBanks
          ? _value.isLoadingGetBanks
          : isLoadingGetBanks // ignore: cast_nullable_to_non_nullable
              as bool,
      successGetBanks: null == successGetBanks
          ? _value.successGetBanks
          : successGetBanks // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErrorGetBanks: null == hasErrorGetBanks
          ? _value.hasErrorGetBanks
          : hasErrorGetBanks // ignore: cast_nullable_to_non_nullable
              as bool,
      messageErrorGetBanks: null == messageErrorGetBanks
          ? _value.messageErrorGetBanks
          : messageErrorGetBanks // ignore: cast_nullable_to_non_nullable
              as String,
      banks: null == banks
          ? _value.banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<StaticModel>,
      isLoadingGetTransferReasons: null == isLoadingGetTransferReasons
          ? _value.isLoadingGetTransferReasons
          : isLoadingGetTransferReasons // ignore: cast_nullable_to_non_nullable
              as bool,
      successGetTransferReasons: null == successGetTransferReasons
          ? _value.successGetTransferReasons
          : successGetTransferReasons // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErrorGetTransferReasons: null == hasErrorGetTransferReasons
          ? _value.hasErrorGetTransferReasons
          : hasErrorGetTransferReasons // ignore: cast_nullable_to_non_nullable
              as bool,
      messageErrorGetTransferReasons: null == messageErrorGetTransferReasons
          ? _value.messageErrorGetTransferReasons
          : messageErrorGetTransferReasons // ignore: cast_nullable_to_non_nullable
              as String,
      transferReasons: null == transferReasons
          ? _value.transferReasons
          : transferReasons // ignore: cast_nullable_to_non_nullable
              as List<StaticTextModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TransferSygsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoadingSYGSTransfer,
      bool successSYGSTransfer,
      String messageSuccessSYGSTransfer,
      bool hasErrorSYGSTransfer,
      String messageErrorSYGSTransfer,
      bool isLoadingGetBanks,
      bool successGetBanks,
      bool hasErrorGetBanks,
      String messageErrorGetBanks,
      List<StaticModel> banks,
      bool isLoadingGetTransferReasons,
      bool successGetTransferReasons,
      bool hasErrorGetTransferReasons,
      String messageErrorGetTransferReasons,
      List<StaticTextModel> transferReasons});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TransferSygsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingSYGSTransfer = null,
    Object? successSYGSTransfer = null,
    Object? messageSuccessSYGSTransfer = null,
    Object? hasErrorSYGSTransfer = null,
    Object? messageErrorSYGSTransfer = null,
    Object? isLoadingGetBanks = null,
    Object? successGetBanks = null,
    Object? hasErrorGetBanks = null,
    Object? messageErrorGetBanks = null,
    Object? banks = null,
    Object? isLoadingGetTransferReasons = null,
    Object? successGetTransferReasons = null,
    Object? hasErrorGetTransferReasons = null,
    Object? messageErrorGetTransferReasons = null,
    Object? transferReasons = null,
  }) {
    return _then(_$InitialImpl(
      isLoadingSYGSTransfer: null == isLoadingSYGSTransfer
          ? _value.isLoadingSYGSTransfer
          : isLoadingSYGSTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      successSYGSTransfer: null == successSYGSTransfer
          ? _value.successSYGSTransfer
          : successSYGSTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      messageSuccessSYGSTransfer: null == messageSuccessSYGSTransfer
          ? _value.messageSuccessSYGSTransfer
          : messageSuccessSYGSTransfer // ignore: cast_nullable_to_non_nullable
              as String,
      hasErrorSYGSTransfer: null == hasErrorSYGSTransfer
          ? _value.hasErrorSYGSTransfer
          : hasErrorSYGSTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      messageErrorSYGSTransfer: null == messageErrorSYGSTransfer
          ? _value.messageErrorSYGSTransfer
          : messageErrorSYGSTransfer // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingGetBanks: null == isLoadingGetBanks
          ? _value.isLoadingGetBanks
          : isLoadingGetBanks // ignore: cast_nullable_to_non_nullable
              as bool,
      successGetBanks: null == successGetBanks
          ? _value.successGetBanks
          : successGetBanks // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErrorGetBanks: null == hasErrorGetBanks
          ? _value.hasErrorGetBanks
          : hasErrorGetBanks // ignore: cast_nullable_to_non_nullable
              as bool,
      messageErrorGetBanks: null == messageErrorGetBanks
          ? _value.messageErrorGetBanks
          : messageErrorGetBanks // ignore: cast_nullable_to_non_nullable
              as String,
      banks: null == banks
          ? _value._banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<StaticModel>,
      isLoadingGetTransferReasons: null == isLoadingGetTransferReasons
          ? _value.isLoadingGetTransferReasons
          : isLoadingGetTransferReasons // ignore: cast_nullable_to_non_nullable
              as bool,
      successGetTransferReasons: null == successGetTransferReasons
          ? _value.successGetTransferReasons
          : successGetTransferReasons // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErrorGetTransferReasons: null == hasErrorGetTransferReasons
          ? _value.hasErrorGetTransferReasons
          : hasErrorGetTransferReasons // ignore: cast_nullable_to_non_nullable
              as bool,
      messageErrorGetTransferReasons: null == messageErrorGetTransferReasons
          ? _value.messageErrorGetTransferReasons
          : messageErrorGetTransferReasons // ignore: cast_nullable_to_non_nullable
              as String,
      transferReasons: null == transferReasons
          ? _value._transferReasons
          : transferReasons // ignore: cast_nullable_to_non_nullable
              as List<StaticTextModel>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isLoadingSYGSTransfer = false,
      this.successSYGSTransfer = false,
      this.messageSuccessSYGSTransfer = "",
      this.hasErrorSYGSTransfer = false,
      this.messageErrorSYGSTransfer = "",
      this.isLoadingGetBanks = false,
      this.successGetBanks = false,
      this.hasErrorGetBanks = false,
      this.messageErrorGetBanks = "",
      final List<StaticModel> banks = const [],
      this.isLoadingGetTransferReasons = false,
      this.successGetTransferReasons = false,
      this.hasErrorGetTransferReasons = false,
      this.messageErrorGetTransferReasons = "",
      final List<StaticTextModel> transferReasons = const []})
      : _banks = banks,
        _transferReasons = transferReasons;

  @override
  @JsonKey()
  final bool isLoadingSYGSTransfer;
  @override
  @JsonKey()
  final bool successSYGSTransfer;
  @override
  @JsonKey()
  final String messageSuccessSYGSTransfer;
  @override
  @JsonKey()
  final bool hasErrorSYGSTransfer;
  @override
  @JsonKey()
  final String messageErrorSYGSTransfer;
//--------------
  @override
  @JsonKey()
  final bool isLoadingGetBanks;
  @override
  @JsonKey()
  final bool successGetBanks;
  @override
  @JsonKey()
  final bool hasErrorGetBanks;
  @override
  @JsonKey()
  final String messageErrorGetBanks;
  final List<StaticModel> _banks;
  @override
  @JsonKey()
  List<StaticModel> get banks {
    if (_banks is EqualUnmodifiableListView) return _banks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banks);
  }

//------
  @override
  @JsonKey()
  final bool isLoadingGetTransferReasons;
  @override
  @JsonKey()
  final bool successGetTransferReasons;
  @override
  @JsonKey()
  final bool hasErrorGetTransferReasons;
  @override
  @JsonKey()
  final String messageErrorGetTransferReasons;
  final List<StaticTextModel> _transferReasons;
  @override
  @JsonKey()
  List<StaticTextModel> get transferReasons {
    if (_transferReasons is EqualUnmodifiableListView) return _transferReasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transferReasons);
  }

  @override
  String toString() {
    return 'TransferSygsState.initial(isLoadingSYGSTransfer: $isLoadingSYGSTransfer, successSYGSTransfer: $successSYGSTransfer, messageSuccessSYGSTransfer: $messageSuccessSYGSTransfer, hasErrorSYGSTransfer: $hasErrorSYGSTransfer, messageErrorSYGSTransfer: $messageErrorSYGSTransfer, isLoadingGetBanks: $isLoadingGetBanks, successGetBanks: $successGetBanks, hasErrorGetBanks: $hasErrorGetBanks, messageErrorGetBanks: $messageErrorGetBanks, banks: $banks, isLoadingGetTransferReasons: $isLoadingGetTransferReasons, successGetTransferReasons: $successGetTransferReasons, hasErrorGetTransferReasons: $hasErrorGetTransferReasons, messageErrorGetTransferReasons: $messageErrorGetTransferReasons, transferReasons: $transferReasons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoadingSYGSTransfer, isLoadingSYGSTransfer) ||
                other.isLoadingSYGSTransfer == isLoadingSYGSTransfer) &&
            (identical(other.successSYGSTransfer, successSYGSTransfer) ||
                other.successSYGSTransfer == successSYGSTransfer) &&
            (identical(other.messageSuccessSYGSTransfer, messageSuccessSYGSTransfer) ||
                other.messageSuccessSYGSTransfer ==
                    messageSuccessSYGSTransfer) &&
            (identical(other.hasErrorSYGSTransfer, hasErrorSYGSTransfer) ||
                other.hasErrorSYGSTransfer == hasErrorSYGSTransfer) &&
            (identical(other.messageErrorSYGSTransfer, messageErrorSYGSTransfer) ||
                other.messageErrorSYGSTransfer == messageErrorSYGSTransfer) &&
            (identical(other.isLoadingGetBanks, isLoadingGetBanks) ||
                other.isLoadingGetBanks == isLoadingGetBanks) &&
            (identical(other.successGetBanks, successGetBanks) ||
                other.successGetBanks == successGetBanks) &&
            (identical(other.hasErrorGetBanks, hasErrorGetBanks) ||
                other.hasErrorGetBanks == hasErrorGetBanks) &&
            (identical(other.messageErrorGetBanks, messageErrorGetBanks) ||
                other.messageErrorGetBanks == messageErrorGetBanks) &&
            const DeepCollectionEquality().equals(other._banks, _banks) &&
            (identical(other.isLoadingGetTransferReasons,
                    isLoadingGetTransferReasons) ||
                other.isLoadingGetTransferReasons ==
                    isLoadingGetTransferReasons) &&
            (identical(other.successGetTransferReasons, successGetTransferReasons) ||
                other.successGetTransferReasons == successGetTransferReasons) &&
            (identical(other.hasErrorGetTransferReasons,
                    hasErrorGetTransferReasons) ||
                other.hasErrorGetTransferReasons ==
                    hasErrorGetTransferReasons) &&
            (identical(other.messageErrorGetTransferReasons,
                    messageErrorGetTransferReasons) ||
                other.messageErrorGetTransferReasons ==
                    messageErrorGetTransferReasons) &&
            const DeepCollectionEquality()
                .equals(other._transferReasons, _transferReasons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoadingSYGSTransfer,
      successSYGSTransfer,
      messageSuccessSYGSTransfer,
      hasErrorSYGSTransfer,
      messageErrorSYGSTransfer,
      isLoadingGetBanks,
      successGetBanks,
      hasErrorGetBanks,
      messageErrorGetBanks,
      const DeepCollectionEquality().hash(_banks),
      isLoadingGetTransferReasons,
      successGetTransferReasons,
      hasErrorGetTransferReasons,
      messageErrorGetTransferReasons,
      const DeepCollectionEquality().hash(_transferReasons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoadingSYGSTransfer,
            bool successSYGSTransfer,
            String messageSuccessSYGSTransfer,
            bool hasErrorSYGSTransfer,
            String messageErrorSYGSTransfer,
            bool isLoadingGetBanks,
            bool successGetBanks,
            bool hasErrorGetBanks,
            String messageErrorGetBanks,
            List<StaticModel> banks,
            bool isLoadingGetTransferReasons,
            bool successGetTransferReasons,
            bool hasErrorGetTransferReasons,
            String messageErrorGetTransferReasons,
            List<StaticTextModel> transferReasons)
        initial,
  }) {
    return initial(
        isLoadingSYGSTransfer,
        successSYGSTransfer,
        messageSuccessSYGSTransfer,
        hasErrorSYGSTransfer,
        messageErrorSYGSTransfer,
        isLoadingGetBanks,
        successGetBanks,
        hasErrorGetBanks,
        messageErrorGetBanks,
        banks,
        isLoadingGetTransferReasons,
        successGetTransferReasons,
        hasErrorGetTransferReasons,
        messageErrorGetTransferReasons,
        transferReasons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoadingSYGSTransfer,
            bool successSYGSTransfer,
            String messageSuccessSYGSTransfer,
            bool hasErrorSYGSTransfer,
            String messageErrorSYGSTransfer,
            bool isLoadingGetBanks,
            bool successGetBanks,
            bool hasErrorGetBanks,
            String messageErrorGetBanks,
            List<StaticModel> banks,
            bool isLoadingGetTransferReasons,
            bool successGetTransferReasons,
            bool hasErrorGetTransferReasons,
            String messageErrorGetTransferReasons,
            List<StaticTextModel> transferReasons)?
        initial,
  }) {
    return initial?.call(
        isLoadingSYGSTransfer,
        successSYGSTransfer,
        messageSuccessSYGSTransfer,
        hasErrorSYGSTransfer,
        messageErrorSYGSTransfer,
        isLoadingGetBanks,
        successGetBanks,
        hasErrorGetBanks,
        messageErrorGetBanks,
        banks,
        isLoadingGetTransferReasons,
        successGetTransferReasons,
        hasErrorGetTransferReasons,
        messageErrorGetTransferReasons,
        transferReasons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoadingSYGSTransfer,
            bool successSYGSTransfer,
            String messageSuccessSYGSTransfer,
            bool hasErrorSYGSTransfer,
            String messageErrorSYGSTransfer,
            bool isLoadingGetBanks,
            bool successGetBanks,
            bool hasErrorGetBanks,
            String messageErrorGetBanks,
            List<StaticModel> banks,
            bool isLoadingGetTransferReasons,
            bool successGetTransferReasons,
            bool hasErrorGetTransferReasons,
            String messageErrorGetTransferReasons,
            List<StaticTextModel> transferReasons)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          isLoadingSYGSTransfer,
          successSYGSTransfer,
          messageSuccessSYGSTransfer,
          hasErrorSYGSTransfer,
          messageErrorSYGSTransfer,
          isLoadingGetBanks,
          successGetBanks,
          hasErrorGetBanks,
          messageErrorGetBanks,
          banks,
          isLoadingGetTransferReasons,
          successGetTransferReasons,
          hasErrorGetTransferReasons,
          messageErrorGetTransferReasons,
          transferReasons);
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

abstract class _Initial implements TransferSygsState {
  const factory _Initial(
      {final bool isLoadingSYGSTransfer,
      final bool successSYGSTransfer,
      final String messageSuccessSYGSTransfer,
      final bool hasErrorSYGSTransfer,
      final String messageErrorSYGSTransfer,
      final bool isLoadingGetBanks,
      final bool successGetBanks,
      final bool hasErrorGetBanks,
      final String messageErrorGetBanks,
      final List<StaticModel> banks,
      final bool isLoadingGetTransferReasons,
      final bool successGetTransferReasons,
      final bool hasErrorGetTransferReasons,
      final String messageErrorGetTransferReasons,
      final List<StaticTextModel> transferReasons}) = _$InitialImpl;

  @override
  bool get isLoadingSYGSTransfer;
  @override
  bool get successSYGSTransfer;
  @override
  String get messageSuccessSYGSTransfer;
  @override
  bool get hasErrorSYGSTransfer;
  @override
  String get messageErrorSYGSTransfer;
  @override //--------------
  bool get isLoadingGetBanks;
  @override
  bool get successGetBanks;
  @override
  bool get hasErrorGetBanks;
  @override
  String get messageErrorGetBanks;
  @override
  List<StaticModel> get banks;
  @override //------
  bool get isLoadingGetTransferReasons;
  @override
  bool get successGetTransferReasons;
  @override
  bool get hasErrorGetTransferReasons;
  @override
  String get messageErrorGetTransferReasons;
  @override
  List<StaticTextModel> get transferReasons;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
