// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_statement_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountStatementSettingsModel _$AccountStatementSettingsModelFromJson(
    Map<String, dynamic> json) {
  return _AccountStatementSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$AccountStatementSettingsModel {
  @JsonKey(name: "view_max_period")
  int get viewMaxPeriod => throw _privateConstructorUsedError;
  @JsonKey(name: "export_max_period")
  int get exportMaxPeriod => throw _privateConstructorUsedError;

  /// Serializes this AccountStatementSettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountStatementSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountStatementSettingsModelCopyWith<AccountStatementSettingsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStatementSettingsModelCopyWith<$Res> {
  factory $AccountStatementSettingsModelCopyWith(
          AccountStatementSettingsModel value,
          $Res Function(AccountStatementSettingsModel) then) =
      _$AccountStatementSettingsModelCopyWithImpl<$Res,
          AccountStatementSettingsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "view_max_period") int viewMaxPeriod,
      @JsonKey(name: "export_max_period") int exportMaxPeriod});
}

/// @nodoc
class _$AccountStatementSettingsModelCopyWithImpl<$Res,
        $Val extends AccountStatementSettingsModel>
    implements $AccountStatementSettingsModelCopyWith<$Res> {
  _$AccountStatementSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountStatementSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewMaxPeriod = null,
    Object? exportMaxPeriod = null,
  }) {
    return _then(_value.copyWith(
      viewMaxPeriod: null == viewMaxPeriod
          ? _value.viewMaxPeriod
          : viewMaxPeriod // ignore: cast_nullable_to_non_nullable
              as int,
      exportMaxPeriod: null == exportMaxPeriod
          ? _value.exportMaxPeriod
          : exportMaxPeriod // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountStatementSettingsModelImplCopyWith<$Res>
    implements $AccountStatementSettingsModelCopyWith<$Res> {
  factory _$$AccountStatementSettingsModelImplCopyWith(
          _$AccountStatementSettingsModelImpl value,
          $Res Function(_$AccountStatementSettingsModelImpl) then) =
      __$$AccountStatementSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "view_max_period") int viewMaxPeriod,
      @JsonKey(name: "export_max_period") int exportMaxPeriod});
}

/// @nodoc
class __$$AccountStatementSettingsModelImplCopyWithImpl<$Res>
    extends _$AccountStatementSettingsModelCopyWithImpl<$Res,
        _$AccountStatementSettingsModelImpl>
    implements _$$AccountStatementSettingsModelImplCopyWith<$Res> {
  __$$AccountStatementSettingsModelImplCopyWithImpl(
      _$AccountStatementSettingsModelImpl _value,
      $Res Function(_$AccountStatementSettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountStatementSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewMaxPeriod = null,
    Object? exportMaxPeriod = null,
  }) {
    return _then(_$AccountStatementSettingsModelImpl(
      viewMaxPeriod: null == viewMaxPeriod
          ? _value.viewMaxPeriod
          : viewMaxPeriod // ignore: cast_nullable_to_non_nullable
              as int,
      exportMaxPeriod: null == exportMaxPeriod
          ? _value.exportMaxPeriod
          : exportMaxPeriod // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountStatementSettingsModelImpl
    implements _AccountStatementSettingsModel {
  const _$AccountStatementSettingsModelImpl(
      {@JsonKey(name: "view_max_period") this.viewMaxPeriod = 0,
      @JsonKey(name: "export_max_period") this.exportMaxPeriod = 0});

  factory _$AccountStatementSettingsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AccountStatementSettingsModelImplFromJson(json);

  @override
  @JsonKey(name: "view_max_period")
  final int viewMaxPeriod;
  @override
  @JsonKey(name: "export_max_period")
  final int exportMaxPeriod;

  @override
  String toString() {
    return 'AccountStatementSettingsModel(viewMaxPeriod: $viewMaxPeriod, exportMaxPeriod: $exportMaxPeriod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStatementSettingsModelImpl &&
            (identical(other.viewMaxPeriod, viewMaxPeriod) ||
                other.viewMaxPeriod == viewMaxPeriod) &&
            (identical(other.exportMaxPeriod, exportMaxPeriod) ||
                other.exportMaxPeriod == exportMaxPeriod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, viewMaxPeriod, exportMaxPeriod);

  /// Create a copy of AccountStatementSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStatementSettingsModelImplCopyWith<
          _$AccountStatementSettingsModelImpl>
      get copyWith => __$$AccountStatementSettingsModelImplCopyWithImpl<
          _$AccountStatementSettingsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountStatementSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _AccountStatementSettingsModel
    implements AccountStatementSettingsModel {
  const factory _AccountStatementSettingsModel(
          {@JsonKey(name: "view_max_period") final int viewMaxPeriod,
          @JsonKey(name: "export_max_period") final int exportMaxPeriod}) =
      _$AccountStatementSettingsModelImpl;

  factory _AccountStatementSettingsModel.fromJson(Map<String, dynamic> json) =
      _$AccountStatementSettingsModelImpl.fromJson;

  @override
  @JsonKey(name: "view_max_period")
  int get viewMaxPeriod;
  @override
  @JsonKey(name: "export_max_period")
  int get exportMaxPeriod;

  /// Create a copy of AccountStatementSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountStatementSettingsModelImplCopyWith<
          _$AccountStatementSettingsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
