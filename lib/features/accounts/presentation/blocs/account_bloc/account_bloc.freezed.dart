// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAccounts,
    required TResult Function() getAccountStatementsSettings,
    required TResult Function(int accountId, int? maxPeriod)
        getAccountStatements,
    required TResult Function(int accountId, int? maxPeriod)
        exportAccountStatements,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAccounts,
    TResult? Function()? getAccountStatementsSettings,
    TResult? Function(int accountId, int? maxPeriod)? getAccountStatements,
    TResult? Function(int accountId, int? maxPeriod)? exportAccountStatements,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAccounts,
    TResult Function()? getAccountStatementsSettings,
    TResult Function(int accountId, int? maxPeriod)? getAccountStatements,
    TResult Function(int accountId, int? maxPeriod)? exportAccountStatements,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAccounts value) getAccounts,
    required TResult Function(_GetAccountStatementsSettings value)
        getAccountStatementsSettings,
    required TResult Function(_GetAccountStatements value) getAccountStatements,
    required TResult Function(_ExportAccountStatements value)
        exportAccountStatements,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccounts value)? getAccounts,
    TResult? Function(_GetAccountStatementsSettings value)?
        getAccountStatementsSettings,
    TResult? Function(_GetAccountStatements value)? getAccountStatements,
    TResult? Function(_ExportAccountStatements value)? exportAccountStatements,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccounts value)? getAccounts,
    TResult Function(_GetAccountStatementsSettings value)?
        getAccountStatementsSettings,
    TResult Function(_GetAccountStatements value)? getAccountStatements,
    TResult Function(_ExportAccountStatements value)? exportAccountStatements,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAccountsImplCopyWith<$Res> {
  factory _$$GetAccountsImplCopyWith(
          _$GetAccountsImpl value, $Res Function(_$GetAccountsImpl) then) =
      __$$GetAccountsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAccountsImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$GetAccountsImpl>
    implements _$$GetAccountsImplCopyWith<$Res> {
  __$$GetAccountsImplCopyWithImpl(
      _$GetAccountsImpl _value, $Res Function(_$GetAccountsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAccountsImpl with DiagnosticableTreeMixin implements _GetAccounts {
  const _$GetAccountsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountEvent.getAccounts()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AccountEvent.getAccounts'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAccountsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAccounts,
    required TResult Function() getAccountStatementsSettings,
    required TResult Function(int accountId, int? maxPeriod)
        getAccountStatements,
    required TResult Function(int accountId, int? maxPeriod)
        exportAccountStatements,
  }) {
    return getAccounts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAccounts,
    TResult? Function()? getAccountStatementsSettings,
    TResult? Function(int accountId, int? maxPeriod)? getAccountStatements,
    TResult? Function(int accountId, int? maxPeriod)? exportAccountStatements,
  }) {
    return getAccounts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAccounts,
    TResult Function()? getAccountStatementsSettings,
    TResult Function(int accountId, int? maxPeriod)? getAccountStatements,
    TResult Function(int accountId, int? maxPeriod)? exportAccountStatements,
    required TResult orElse(),
  }) {
    if (getAccounts != null) {
      return getAccounts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAccounts value) getAccounts,
    required TResult Function(_GetAccountStatementsSettings value)
        getAccountStatementsSettings,
    required TResult Function(_GetAccountStatements value) getAccountStatements,
    required TResult Function(_ExportAccountStatements value)
        exportAccountStatements,
  }) {
    return getAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccounts value)? getAccounts,
    TResult? Function(_GetAccountStatementsSettings value)?
        getAccountStatementsSettings,
    TResult? Function(_GetAccountStatements value)? getAccountStatements,
    TResult? Function(_ExportAccountStatements value)? exportAccountStatements,
  }) {
    return getAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccounts value)? getAccounts,
    TResult Function(_GetAccountStatementsSettings value)?
        getAccountStatementsSettings,
    TResult Function(_GetAccountStatements value)? getAccountStatements,
    TResult Function(_ExportAccountStatements value)? exportAccountStatements,
    required TResult orElse(),
  }) {
    if (getAccounts != null) {
      return getAccounts(this);
    }
    return orElse();
  }
}

abstract class _GetAccounts implements AccountEvent {
  const factory _GetAccounts() = _$GetAccountsImpl;
}

/// @nodoc
abstract class _$$GetAccountStatementsSettingsImplCopyWith<$Res> {
  factory _$$GetAccountStatementsSettingsImplCopyWith(
          _$GetAccountStatementsSettingsImpl value,
          $Res Function(_$GetAccountStatementsSettingsImpl) then) =
      __$$GetAccountStatementsSettingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAccountStatementsSettingsImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$GetAccountStatementsSettingsImpl>
    implements _$$GetAccountStatementsSettingsImplCopyWith<$Res> {
  __$$GetAccountStatementsSettingsImplCopyWithImpl(
      _$GetAccountStatementsSettingsImpl _value,
      $Res Function(_$GetAccountStatementsSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAccountStatementsSettingsImpl
    with DiagnosticableTreeMixin
    implements _GetAccountStatementsSettings {
  const _$GetAccountStatementsSettingsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountEvent.getAccountStatementsSettings()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'AccountEvent.getAccountStatementsSettings'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountStatementsSettingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAccounts,
    required TResult Function() getAccountStatementsSettings,
    required TResult Function(int accountId, int? maxPeriod)
        getAccountStatements,
    required TResult Function(int accountId, int? maxPeriod)
        exportAccountStatements,
  }) {
    return getAccountStatementsSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAccounts,
    TResult? Function()? getAccountStatementsSettings,
    TResult? Function(int accountId, int? maxPeriod)? getAccountStatements,
    TResult? Function(int accountId, int? maxPeriod)? exportAccountStatements,
  }) {
    return getAccountStatementsSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAccounts,
    TResult Function()? getAccountStatementsSettings,
    TResult Function(int accountId, int? maxPeriod)? getAccountStatements,
    TResult Function(int accountId, int? maxPeriod)? exportAccountStatements,
    required TResult orElse(),
  }) {
    if (getAccountStatementsSettings != null) {
      return getAccountStatementsSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAccounts value) getAccounts,
    required TResult Function(_GetAccountStatementsSettings value)
        getAccountStatementsSettings,
    required TResult Function(_GetAccountStatements value) getAccountStatements,
    required TResult Function(_ExportAccountStatements value)
        exportAccountStatements,
  }) {
    return getAccountStatementsSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccounts value)? getAccounts,
    TResult? Function(_GetAccountStatementsSettings value)?
        getAccountStatementsSettings,
    TResult? Function(_GetAccountStatements value)? getAccountStatements,
    TResult? Function(_ExportAccountStatements value)? exportAccountStatements,
  }) {
    return getAccountStatementsSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccounts value)? getAccounts,
    TResult Function(_GetAccountStatementsSettings value)?
        getAccountStatementsSettings,
    TResult Function(_GetAccountStatements value)? getAccountStatements,
    TResult Function(_ExportAccountStatements value)? exportAccountStatements,
    required TResult orElse(),
  }) {
    if (getAccountStatementsSettings != null) {
      return getAccountStatementsSettings(this);
    }
    return orElse();
  }
}

abstract class _GetAccountStatementsSettings implements AccountEvent {
  const factory _GetAccountStatementsSettings() =
      _$GetAccountStatementsSettingsImpl;
}

/// @nodoc
abstract class _$$GetAccountStatementsImplCopyWith<$Res> {
  factory _$$GetAccountStatementsImplCopyWith(_$GetAccountStatementsImpl value,
          $Res Function(_$GetAccountStatementsImpl) then) =
      __$$GetAccountStatementsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int accountId, int? maxPeriod});
}

/// @nodoc
class __$$GetAccountStatementsImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$GetAccountStatementsImpl>
    implements _$$GetAccountStatementsImplCopyWith<$Res> {
  __$$GetAccountStatementsImplCopyWithImpl(_$GetAccountStatementsImpl _value,
      $Res Function(_$GetAccountStatementsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? maxPeriod = freezed,
  }) {
    return _then(_$GetAccountStatementsImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      maxPeriod: freezed == maxPeriod
          ? _value.maxPeriod
          : maxPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetAccountStatementsImpl
    with DiagnosticableTreeMixin
    implements _GetAccountStatements {
  const _$GetAccountStatementsImpl({required this.accountId, this.maxPeriod});

  @override
  final int accountId;
  @override
  final int? maxPeriod;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountEvent.getAccountStatements(accountId: $accountId, maxPeriod: $maxPeriod)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountEvent.getAccountStatements'))
      ..add(DiagnosticsProperty('accountId', accountId))
      ..add(DiagnosticsProperty('maxPeriod', maxPeriod));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountStatementsImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.maxPeriod, maxPeriod) ||
                other.maxPeriod == maxPeriod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId, maxPeriod);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAccountStatementsImplCopyWith<_$GetAccountStatementsImpl>
      get copyWith =>
          __$$GetAccountStatementsImplCopyWithImpl<_$GetAccountStatementsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAccounts,
    required TResult Function() getAccountStatementsSettings,
    required TResult Function(int accountId, int? maxPeriod)
        getAccountStatements,
    required TResult Function(int accountId, int? maxPeriod)
        exportAccountStatements,
  }) {
    return getAccountStatements(accountId, maxPeriod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAccounts,
    TResult? Function()? getAccountStatementsSettings,
    TResult? Function(int accountId, int? maxPeriod)? getAccountStatements,
    TResult? Function(int accountId, int? maxPeriod)? exportAccountStatements,
  }) {
    return getAccountStatements?.call(accountId, maxPeriod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAccounts,
    TResult Function()? getAccountStatementsSettings,
    TResult Function(int accountId, int? maxPeriod)? getAccountStatements,
    TResult Function(int accountId, int? maxPeriod)? exportAccountStatements,
    required TResult orElse(),
  }) {
    if (getAccountStatements != null) {
      return getAccountStatements(accountId, maxPeriod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAccounts value) getAccounts,
    required TResult Function(_GetAccountStatementsSettings value)
        getAccountStatementsSettings,
    required TResult Function(_GetAccountStatements value) getAccountStatements,
    required TResult Function(_ExportAccountStatements value)
        exportAccountStatements,
  }) {
    return getAccountStatements(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccounts value)? getAccounts,
    TResult? Function(_GetAccountStatementsSettings value)?
        getAccountStatementsSettings,
    TResult? Function(_GetAccountStatements value)? getAccountStatements,
    TResult? Function(_ExportAccountStatements value)? exportAccountStatements,
  }) {
    return getAccountStatements?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccounts value)? getAccounts,
    TResult Function(_GetAccountStatementsSettings value)?
        getAccountStatementsSettings,
    TResult Function(_GetAccountStatements value)? getAccountStatements,
    TResult Function(_ExportAccountStatements value)? exportAccountStatements,
    required TResult orElse(),
  }) {
    if (getAccountStatements != null) {
      return getAccountStatements(this);
    }
    return orElse();
  }
}

abstract class _GetAccountStatements implements AccountEvent {
  const factory _GetAccountStatements(
      {required final int accountId,
      final int? maxPeriod}) = _$GetAccountStatementsImpl;

  int get accountId;
  int? get maxPeriod;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAccountStatementsImplCopyWith<_$GetAccountStatementsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExportAccountStatementsImplCopyWith<$Res> {
  factory _$$ExportAccountStatementsImplCopyWith(
          _$ExportAccountStatementsImpl value,
          $Res Function(_$ExportAccountStatementsImpl) then) =
      __$$ExportAccountStatementsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int accountId, int? maxPeriod});
}

/// @nodoc
class __$$ExportAccountStatementsImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$ExportAccountStatementsImpl>
    implements _$$ExportAccountStatementsImplCopyWith<$Res> {
  __$$ExportAccountStatementsImplCopyWithImpl(
      _$ExportAccountStatementsImpl _value,
      $Res Function(_$ExportAccountStatementsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? maxPeriod = freezed,
  }) {
    return _then(_$ExportAccountStatementsImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      maxPeriod: freezed == maxPeriod
          ? _value.maxPeriod
          : maxPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ExportAccountStatementsImpl
    with DiagnosticableTreeMixin
    implements _ExportAccountStatements {
  const _$ExportAccountStatementsImpl(
      {required this.accountId, this.maxPeriod});

  @override
  final int accountId;
  @override
  final int? maxPeriod;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountEvent.exportAccountStatements(accountId: $accountId, maxPeriod: $maxPeriod)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountEvent.exportAccountStatements'))
      ..add(DiagnosticsProperty('accountId', accountId))
      ..add(DiagnosticsProperty('maxPeriod', maxPeriod));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExportAccountStatementsImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.maxPeriod, maxPeriod) ||
                other.maxPeriod == maxPeriod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId, maxPeriod);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExportAccountStatementsImplCopyWith<_$ExportAccountStatementsImpl>
      get copyWith => __$$ExportAccountStatementsImplCopyWithImpl<
          _$ExportAccountStatementsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAccounts,
    required TResult Function() getAccountStatementsSettings,
    required TResult Function(int accountId, int? maxPeriod)
        getAccountStatements,
    required TResult Function(int accountId, int? maxPeriod)
        exportAccountStatements,
  }) {
    return exportAccountStatements(accountId, maxPeriod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAccounts,
    TResult? Function()? getAccountStatementsSettings,
    TResult? Function(int accountId, int? maxPeriod)? getAccountStatements,
    TResult? Function(int accountId, int? maxPeriod)? exportAccountStatements,
  }) {
    return exportAccountStatements?.call(accountId, maxPeriod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAccounts,
    TResult Function()? getAccountStatementsSettings,
    TResult Function(int accountId, int? maxPeriod)? getAccountStatements,
    TResult Function(int accountId, int? maxPeriod)? exportAccountStatements,
    required TResult orElse(),
  }) {
    if (exportAccountStatements != null) {
      return exportAccountStatements(accountId, maxPeriod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAccounts value) getAccounts,
    required TResult Function(_GetAccountStatementsSettings value)
        getAccountStatementsSettings,
    required TResult Function(_GetAccountStatements value) getAccountStatements,
    required TResult Function(_ExportAccountStatements value)
        exportAccountStatements,
  }) {
    return exportAccountStatements(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccounts value)? getAccounts,
    TResult? Function(_GetAccountStatementsSettings value)?
        getAccountStatementsSettings,
    TResult? Function(_GetAccountStatements value)? getAccountStatements,
    TResult? Function(_ExportAccountStatements value)? exportAccountStatements,
  }) {
    return exportAccountStatements?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccounts value)? getAccounts,
    TResult Function(_GetAccountStatementsSettings value)?
        getAccountStatementsSettings,
    TResult Function(_GetAccountStatements value)? getAccountStatements,
    TResult Function(_ExportAccountStatements value)? exportAccountStatements,
    required TResult orElse(),
  }) {
    if (exportAccountStatements != null) {
      return exportAccountStatements(this);
    }
    return orElse();
  }
}

abstract class _ExportAccountStatements implements AccountEvent {
  const factory _ExportAccountStatements(
      {required final int accountId,
      final int? maxPeriod}) = _$ExportAccountStatementsImpl;

  int get accountId;
  int? get maxPeriod;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExportAccountStatementsImplCopyWith<_$ExportAccountStatementsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String get messageError => throw _privateConstructorUsedError;
  List<AccountModel> get accounts => throw _privateConstructorUsedError;
  bool get isLoadingStatements => throw _privateConstructorUsedError;
  bool get hasErrorStatements => throw _privateConstructorUsedError;
  String get messageErrorStatements => throw _privateConstructorUsedError;
  AccountStatementModel get transactions => throw _privateConstructorUsedError;
  bool get isLoadingStatementsSettings => throw _privateConstructorUsedError;
  bool get hasErrorStatementsSettings => throw _privateConstructorUsedError;
  String get messageErrorStatementsSettings =>
      throw _privateConstructorUsedError;
  AccountStatementSettingsModel get statementsSettings =>
      throw _privateConstructorUsedError;
  bool get isLoadingExport => throw _privateConstructorUsedError;
  bool get hasErrorExport => throw _privateConstructorUsedError;
  String get messageErrorExport => throw _privateConstructorUsedError;
  String get pdf => throw _privateConstructorUsedError;
  bool get successPdf => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading,
            bool hasError,
            String messageError,
            List<AccountModel> accounts,
            bool isLoadingStatements,
            bool hasErrorStatements,
            String messageErrorStatements,
            AccountStatementModel transactions,
            bool isLoadingStatementsSettings,
            bool hasErrorStatementsSettings,
            String messageErrorStatementsSettings,
            AccountStatementSettingsModel statementsSettings,
            bool isLoadingExport,
            bool hasErrorExport,
            String messageErrorExport,
            String pdf,
            bool successPdf)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading,
            bool hasError,
            String messageError,
            List<AccountModel> accounts,
            bool isLoadingStatements,
            bool hasErrorStatements,
            String messageErrorStatements,
            AccountStatementModel transactions,
            bool isLoadingStatementsSettings,
            bool hasErrorStatementsSettings,
            String messageErrorStatementsSettings,
            AccountStatementSettingsModel statementsSettings,
            bool isLoadingExport,
            bool hasErrorExport,
            String messageErrorExport,
            String pdf,
            bool successPdf)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading,
            bool hasError,
            String messageError,
            List<AccountModel> accounts,
            bool isLoadingStatements,
            bool hasErrorStatements,
            String messageErrorStatements,
            AccountStatementModel transactions,
            bool isLoadingStatementsSettings,
            bool hasErrorStatementsSettings,
            String messageErrorStatementsSettings,
            AccountStatementSettingsModel statementsSettings,
            bool isLoadingExport,
            bool hasErrorExport,
            String messageErrorExport,
            String pdf,
            bool successPdf)?
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

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String messageError,
      List<AccountModel> accounts,
      bool isLoadingStatements,
      bool hasErrorStatements,
      String messageErrorStatements,
      AccountStatementModel transactions,
      bool isLoadingStatementsSettings,
      bool hasErrorStatementsSettings,
      String messageErrorStatementsSettings,
      AccountStatementSettingsModel statementsSettings,
      bool isLoadingExport,
      bool hasErrorExport,
      String messageErrorExport,
      String pdf,
      bool successPdf});

  $AccountStatementModelCopyWith<$Res> get transactions;
  $AccountStatementSettingsModelCopyWith<$Res> get statementsSettings;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? messageError = null,
    Object? accounts = null,
    Object? isLoadingStatements = null,
    Object? hasErrorStatements = null,
    Object? messageErrorStatements = null,
    Object? transactions = null,
    Object? isLoadingStatementsSettings = null,
    Object? hasErrorStatementsSettings = null,
    Object? messageErrorStatementsSettings = null,
    Object? statementsSettings = null,
    Object? isLoadingExport = null,
    Object? hasErrorExport = null,
    Object? messageErrorExport = null,
    Object? pdf = null,
    Object? successPdf = null,
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
      messageError: null == messageError
          ? _value.messageError
          : messageError // ignore: cast_nullable_to_non_nullable
              as String,
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AccountModel>,
      isLoadingStatements: null == isLoadingStatements
          ? _value.isLoadingStatements
          : isLoadingStatements // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErrorStatements: null == hasErrorStatements
          ? _value.hasErrorStatements
          : hasErrorStatements // ignore: cast_nullable_to_non_nullable
              as bool,
      messageErrorStatements: null == messageErrorStatements
          ? _value.messageErrorStatements
          : messageErrorStatements // ignore: cast_nullable_to_non_nullable
              as String,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as AccountStatementModel,
      isLoadingStatementsSettings: null == isLoadingStatementsSettings
          ? _value.isLoadingStatementsSettings
          : isLoadingStatementsSettings // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErrorStatementsSettings: null == hasErrorStatementsSettings
          ? _value.hasErrorStatementsSettings
          : hasErrorStatementsSettings // ignore: cast_nullable_to_non_nullable
              as bool,
      messageErrorStatementsSettings: null == messageErrorStatementsSettings
          ? _value.messageErrorStatementsSettings
          : messageErrorStatementsSettings // ignore: cast_nullable_to_non_nullable
              as String,
      statementsSettings: null == statementsSettings
          ? _value.statementsSettings
          : statementsSettings // ignore: cast_nullable_to_non_nullable
              as AccountStatementSettingsModel,
      isLoadingExport: null == isLoadingExport
          ? _value.isLoadingExport
          : isLoadingExport // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErrorExport: null == hasErrorExport
          ? _value.hasErrorExport
          : hasErrorExport // ignore: cast_nullable_to_non_nullable
              as bool,
      messageErrorExport: null == messageErrorExport
          ? _value.messageErrorExport
          : messageErrorExport // ignore: cast_nullable_to_non_nullable
              as String,
      pdf: null == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String,
      successPdf: null == successPdf
          ? _value.successPdf
          : successPdf // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountStatementModelCopyWith<$Res> get transactions {
    return $AccountStatementModelCopyWith<$Res>(_value.transactions, (value) {
      return _then(_value.copyWith(transactions: value) as $Val);
    });
  }

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountStatementSettingsModelCopyWith<$Res> get statementsSettings {
    return $AccountStatementSettingsModelCopyWith<$Res>(
        _value.statementsSettings, (value) {
      return _then(_value.copyWith(statementsSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String messageError,
      List<AccountModel> accounts,
      bool isLoadingStatements,
      bool hasErrorStatements,
      String messageErrorStatements,
      AccountStatementModel transactions,
      bool isLoadingStatementsSettings,
      bool hasErrorStatementsSettings,
      String messageErrorStatementsSettings,
      AccountStatementSettingsModel statementsSettings,
      bool isLoadingExport,
      bool hasErrorExport,
      String messageErrorExport,
      String pdf,
      bool successPdf});

  @override
  $AccountStatementModelCopyWith<$Res> get transactions;
  @override
  $AccountStatementSettingsModelCopyWith<$Res> get statementsSettings;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? messageError = null,
    Object? accounts = null,
    Object? isLoadingStatements = null,
    Object? hasErrorStatements = null,
    Object? messageErrorStatements = null,
    Object? transactions = null,
    Object? isLoadingStatementsSettings = null,
    Object? hasErrorStatementsSettings = null,
    Object? messageErrorStatementsSettings = null,
    Object? statementsSettings = null,
    Object? isLoadingExport = null,
    Object? hasErrorExport = null,
    Object? messageErrorExport = null,
    Object? pdf = null,
    Object? successPdf = null,
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
      messageError: null == messageError
          ? _value.messageError
          : messageError // ignore: cast_nullable_to_non_nullable
              as String,
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AccountModel>,
      isLoadingStatements: null == isLoadingStatements
          ? _value.isLoadingStatements
          : isLoadingStatements // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErrorStatements: null == hasErrorStatements
          ? _value.hasErrorStatements
          : hasErrorStatements // ignore: cast_nullable_to_non_nullable
              as bool,
      messageErrorStatements: null == messageErrorStatements
          ? _value.messageErrorStatements
          : messageErrorStatements // ignore: cast_nullable_to_non_nullable
              as String,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as AccountStatementModel,
      isLoadingStatementsSettings: null == isLoadingStatementsSettings
          ? _value.isLoadingStatementsSettings
          : isLoadingStatementsSettings // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErrorStatementsSettings: null == hasErrorStatementsSettings
          ? _value.hasErrorStatementsSettings
          : hasErrorStatementsSettings // ignore: cast_nullable_to_non_nullable
              as bool,
      messageErrorStatementsSettings: null == messageErrorStatementsSettings
          ? _value.messageErrorStatementsSettings
          : messageErrorStatementsSettings // ignore: cast_nullable_to_non_nullable
              as String,
      statementsSettings: null == statementsSettings
          ? _value.statementsSettings
          : statementsSettings // ignore: cast_nullable_to_non_nullable
              as AccountStatementSettingsModel,
      isLoadingExport: null == isLoadingExport
          ? _value.isLoadingExport
          : isLoadingExport // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErrorExport: null == hasErrorExport
          ? _value.hasErrorExport
          : hasErrorExport // ignore: cast_nullable_to_non_nullable
              as bool,
      messageErrorExport: null == messageErrorExport
          ? _value.messageErrorExport
          : messageErrorExport // ignore: cast_nullable_to_non_nullable
              as String,
      pdf: null == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String,
      successPdf: null == successPdf
          ? _value.successPdf
          : successPdf // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {this.isLoading = false,
      this.hasError = false,
      this.messageError = "",
      final List<AccountModel> accounts = const [],
      this.isLoadingStatements = false,
      this.hasErrorStatements = false,
      this.messageErrorStatements = "",
      this.transactions = const AccountStatementModel(),
      this.isLoadingStatementsSettings = false,
      this.hasErrorStatementsSettings = false,
      this.messageErrorStatementsSettings = "",
      this.statementsSettings = const AccountStatementSettingsModel(),
      this.isLoadingExport = false,
      this.hasErrorExport = false,
      this.messageErrorExport = "",
      this.pdf = "",
      this.successPdf = false})
      : _accounts = accounts;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasError;
  @override
  @JsonKey()
  final String messageError;
  final List<AccountModel> _accounts;
  @override
  @JsonKey()
  List<AccountModel> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  @JsonKey()
  final bool isLoadingStatements;
  @override
  @JsonKey()
  final bool hasErrorStatements;
  @override
  @JsonKey()
  final String messageErrorStatements;
  @override
  @JsonKey()
  final AccountStatementModel transactions;
  @override
  @JsonKey()
  final bool isLoadingStatementsSettings;
  @override
  @JsonKey()
  final bool hasErrorStatementsSettings;
  @override
  @JsonKey()
  final String messageErrorStatementsSettings;
  @override
  @JsonKey()
  final AccountStatementSettingsModel statementsSettings;
  @override
  @JsonKey()
  final bool isLoadingExport;
  @override
  @JsonKey()
  final bool hasErrorExport;
  @override
  @JsonKey()
  final String messageErrorExport;
  @override
  @JsonKey()
  final String pdf;
  @override
  @JsonKey()
  final bool successPdf;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountState.initial(isLoading: $isLoading, hasError: $hasError, messageError: $messageError, accounts: $accounts, isLoadingStatements: $isLoadingStatements, hasErrorStatements: $hasErrorStatements, messageErrorStatements: $messageErrorStatements, transactions: $transactions, isLoadingStatementsSettings: $isLoadingStatementsSettings, hasErrorStatementsSettings: $hasErrorStatementsSettings, messageErrorStatementsSettings: $messageErrorStatementsSettings, statementsSettings: $statementsSettings, isLoadingExport: $isLoadingExport, hasErrorExport: $hasErrorExport, messageErrorExport: $messageErrorExport, pdf: $pdf, successPdf: $successPdf)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountState.initial'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('hasError', hasError))
      ..add(DiagnosticsProperty('messageError', messageError))
      ..add(DiagnosticsProperty('accounts', accounts))
      ..add(DiagnosticsProperty('isLoadingStatements', isLoadingStatements))
      ..add(DiagnosticsProperty('hasErrorStatements', hasErrorStatements))
      ..add(
          DiagnosticsProperty('messageErrorStatements', messageErrorStatements))
      ..add(DiagnosticsProperty('transactions', transactions))
      ..add(DiagnosticsProperty(
          'isLoadingStatementsSettings', isLoadingStatementsSettings))
      ..add(DiagnosticsProperty(
          'hasErrorStatementsSettings', hasErrorStatementsSettings))
      ..add(DiagnosticsProperty(
          'messageErrorStatementsSettings', messageErrorStatementsSettings))
      ..add(DiagnosticsProperty('statementsSettings', statementsSettings))
      ..add(DiagnosticsProperty('isLoadingExport', isLoadingExport))
      ..add(DiagnosticsProperty('hasErrorExport', hasErrorExport))
      ..add(DiagnosticsProperty('messageErrorExport', messageErrorExport))
      ..add(DiagnosticsProperty('pdf', pdf))
      ..add(DiagnosticsProperty('successPdf', successPdf));
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
            (identical(other.messageError, messageError) ||
                other.messageError == messageError) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            (identical(other.isLoadingStatements, isLoadingStatements) ||
                other.isLoadingStatements == isLoadingStatements) &&
            (identical(other.hasErrorStatements, hasErrorStatements) ||
                other.hasErrorStatements == hasErrorStatements) &&
            (identical(other.messageErrorStatements, messageErrorStatements) ||
                other.messageErrorStatements == messageErrorStatements) &&
            (identical(other.transactions, transactions) ||
                other.transactions == transactions) &&
            (identical(other.isLoadingStatementsSettings,
                    isLoadingStatementsSettings) ||
                other.isLoadingStatementsSettings ==
                    isLoadingStatementsSettings) &&
            (identical(other.hasErrorStatementsSettings,
                    hasErrorStatementsSettings) ||
                other.hasErrorStatementsSettings ==
                    hasErrorStatementsSettings) &&
            (identical(other.messageErrorStatementsSettings,
                    messageErrorStatementsSettings) ||
                other.messageErrorStatementsSettings ==
                    messageErrorStatementsSettings) &&
            (identical(other.statementsSettings, statementsSettings) ||
                other.statementsSettings == statementsSettings) &&
            (identical(other.isLoadingExport, isLoadingExport) ||
                other.isLoadingExport == isLoadingExport) &&
            (identical(other.hasErrorExport, hasErrorExport) ||
                other.hasErrorExport == hasErrorExport) &&
            (identical(other.messageErrorExport, messageErrorExport) ||
                other.messageErrorExport == messageErrorExport) &&
            (identical(other.pdf, pdf) || other.pdf == pdf) &&
            (identical(other.successPdf, successPdf) ||
                other.successPdf == successPdf));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      messageError,
      const DeepCollectionEquality().hash(_accounts),
      isLoadingStatements,
      hasErrorStatements,
      messageErrorStatements,
      transactions,
      isLoadingStatementsSettings,
      hasErrorStatementsSettings,
      messageErrorStatementsSettings,
      statementsSettings,
      isLoadingExport,
      hasErrorExport,
      messageErrorExport,
      pdf,
      successPdf);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading,
            bool hasError,
            String messageError,
            List<AccountModel> accounts,
            bool isLoadingStatements,
            bool hasErrorStatements,
            String messageErrorStatements,
            AccountStatementModel transactions,
            bool isLoadingStatementsSettings,
            bool hasErrorStatementsSettings,
            String messageErrorStatementsSettings,
            AccountStatementSettingsModel statementsSettings,
            bool isLoadingExport,
            bool hasErrorExport,
            String messageErrorExport,
            String pdf,
            bool successPdf)
        initial,
  }) {
    return initial(
        isLoading,
        hasError,
        messageError,
        accounts,
        isLoadingStatements,
        hasErrorStatements,
        messageErrorStatements,
        transactions,
        isLoadingStatementsSettings,
        hasErrorStatementsSettings,
        messageErrorStatementsSettings,
        statementsSettings,
        isLoadingExport,
        hasErrorExport,
        messageErrorExport,
        pdf,
        successPdf);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading,
            bool hasError,
            String messageError,
            List<AccountModel> accounts,
            bool isLoadingStatements,
            bool hasErrorStatements,
            String messageErrorStatements,
            AccountStatementModel transactions,
            bool isLoadingStatementsSettings,
            bool hasErrorStatementsSettings,
            String messageErrorStatementsSettings,
            AccountStatementSettingsModel statementsSettings,
            bool isLoadingExport,
            bool hasErrorExport,
            String messageErrorExport,
            String pdf,
            bool successPdf)?
        initial,
  }) {
    return initial?.call(
        isLoading,
        hasError,
        messageError,
        accounts,
        isLoadingStatements,
        hasErrorStatements,
        messageErrorStatements,
        transactions,
        isLoadingStatementsSettings,
        hasErrorStatementsSettings,
        messageErrorStatementsSettings,
        statementsSettings,
        isLoadingExport,
        hasErrorExport,
        messageErrorExport,
        pdf,
        successPdf);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading,
            bool hasError,
            String messageError,
            List<AccountModel> accounts,
            bool isLoadingStatements,
            bool hasErrorStatements,
            String messageErrorStatements,
            AccountStatementModel transactions,
            bool isLoadingStatementsSettings,
            bool hasErrorStatementsSettings,
            String messageErrorStatementsSettings,
            AccountStatementSettingsModel statementsSettings,
            bool isLoadingExport,
            bool hasErrorExport,
            String messageErrorExport,
            String pdf,
            bool successPdf)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          isLoading,
          hasError,
          messageError,
          accounts,
          isLoadingStatements,
          hasErrorStatements,
          messageErrorStatements,
          transactions,
          isLoadingStatementsSettings,
          hasErrorStatementsSettings,
          messageErrorStatementsSettings,
          statementsSettings,
          isLoadingExport,
          hasErrorExport,
          messageErrorExport,
          pdf,
          successPdf);
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

abstract class _Initial implements AccountState {
  const factory _Initial(
      {final bool isLoading,
      final bool hasError,
      final String messageError,
      final List<AccountModel> accounts,
      final bool isLoadingStatements,
      final bool hasErrorStatements,
      final String messageErrorStatements,
      final AccountStatementModel transactions,
      final bool isLoadingStatementsSettings,
      final bool hasErrorStatementsSettings,
      final String messageErrorStatementsSettings,
      final AccountStatementSettingsModel statementsSettings,
      final bool isLoadingExport,
      final bool hasErrorExport,
      final String messageErrorExport,
      final String pdf,
      final bool successPdf}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String get messageError;
  @override
  List<AccountModel> get accounts;
  @override
  bool get isLoadingStatements;
  @override
  bool get hasErrorStatements;
  @override
  String get messageErrorStatements;
  @override
  AccountStatementModel get transactions;
  @override
  bool get isLoadingStatementsSettings;
  @override
  bool get hasErrorStatementsSettings;
  @override
  String get messageErrorStatementsSettings;
  @override
  AccountStatementSettingsModel get statementsSettings;
  @override
  bool get isLoadingExport;
  @override
  bool get hasErrorExport;
  @override
  String get messageErrorExport;
  @override
  String get pdf;
  @override
  bool get successPdf;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
