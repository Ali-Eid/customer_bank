// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_terms_deposit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageTermsDepositModel _$PackageTermsDepositModelFromJson(
    Map<String, dynamic> json) {
  return _PackageTermsDepositModel.fromJson(json);
}

/// @nodoc
mixin _$PackageTermsDepositModel {
  int get id => throw _privateConstructorUsedError;
  int get percentage => throw _privateConstructorUsedError;
  int get duration =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "duration_type")
  String get durationType => throw _privateConstructorUsedError;

  /// Serializes this PackageTermsDepositModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageTermsDepositModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageTermsDepositModelCopyWith<PackageTermsDepositModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageTermsDepositModelCopyWith<$Res> {
  factory $PackageTermsDepositModelCopyWith(PackageTermsDepositModel value,
          $Res Function(PackageTermsDepositModel) then) =
      _$PackageTermsDepositModelCopyWithImpl<$Res, PackageTermsDepositModel>;
  @useResult
  $Res call(
      {int id,
      int percentage,
      int duration,
      @JsonKey(name: "duration_type") String durationType});
}

/// @nodoc
class _$PackageTermsDepositModelCopyWithImpl<$Res,
        $Val extends PackageTermsDepositModel>
    implements $PackageTermsDepositModelCopyWith<$Res> {
  _$PackageTermsDepositModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageTermsDepositModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? percentage = null,
    Object? duration = null,
    Object? durationType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      durationType: null == durationType
          ? _value.durationType
          : durationType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageTermsDepositModelImplCopyWith<$Res>
    implements $PackageTermsDepositModelCopyWith<$Res> {
  factory _$$PackageTermsDepositModelImplCopyWith(
          _$PackageTermsDepositModelImpl value,
          $Res Function(_$PackageTermsDepositModelImpl) then) =
      __$$PackageTermsDepositModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int percentage,
      int duration,
      @JsonKey(name: "duration_type") String durationType});
}

/// @nodoc
class __$$PackageTermsDepositModelImplCopyWithImpl<$Res>
    extends _$PackageTermsDepositModelCopyWithImpl<$Res,
        _$PackageTermsDepositModelImpl>
    implements _$$PackageTermsDepositModelImplCopyWith<$Res> {
  __$$PackageTermsDepositModelImplCopyWithImpl(
      _$PackageTermsDepositModelImpl _value,
      $Res Function(_$PackageTermsDepositModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageTermsDepositModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? percentage = null,
    Object? duration = null,
    Object? durationType = null,
  }) {
    return _then(_$PackageTermsDepositModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      durationType: null == durationType
          ? _value.durationType
          : durationType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageTermsDepositModelImpl implements _PackageTermsDepositModel {
  const _$PackageTermsDepositModelImpl(
      {this.id = 0,
      this.percentage = 0,
      this.duration = 0,
      @JsonKey(name: "duration_type") this.durationType = ""});

  factory _$PackageTermsDepositModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageTermsDepositModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int percentage;
  @override
  @JsonKey()
  final int duration;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "duration_type")
  final String durationType;

  @override
  String toString() {
    return 'PackageTermsDepositModel(id: $id, percentage: $percentage, duration: $duration, durationType: $durationType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageTermsDepositModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.durationType, durationType) ||
                other.durationType == durationType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, percentage, duration, durationType);

  /// Create a copy of PackageTermsDepositModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageTermsDepositModelImplCopyWith<_$PackageTermsDepositModelImpl>
      get copyWith => __$$PackageTermsDepositModelImplCopyWithImpl<
          _$PackageTermsDepositModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageTermsDepositModelImplToJson(
      this,
    );
  }
}

abstract class _PackageTermsDepositModel implements PackageTermsDepositModel {
  const factory _PackageTermsDepositModel(
          {final int id,
          final int percentage,
          final int duration,
          @JsonKey(name: "duration_type") final String durationType}) =
      _$PackageTermsDepositModelImpl;

  factory _PackageTermsDepositModel.fromJson(Map<String, dynamic> json) =
      _$PackageTermsDepositModelImpl.fromJson;

  @override
  int get id;
  @override
  int get percentage;
  @override
  int get duration; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: "duration_type")
  String get durationType;

  /// Create a copy of PackageTermsDepositModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageTermsDepositModelImplCopyWith<_$PackageTermsDepositModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
