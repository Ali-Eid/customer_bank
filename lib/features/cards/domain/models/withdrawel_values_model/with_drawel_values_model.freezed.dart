// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'with_drawel_values_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WithDrawelValuesModel _$WithDrawelValuesModelFromJson(
    Map<String, dynamic> json) {
  return _WithDrawelValuesModel.fromJson(json);
}

/// @nodoc
mixin _$WithDrawelValuesModel {
  int get id => throw _privateConstructorUsedError;
  num get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WithDrawelValuesModelCopyWith<WithDrawelValuesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithDrawelValuesModelCopyWith<$Res> {
  factory $WithDrawelValuesModelCopyWith(WithDrawelValuesModel value,
          $Res Function(WithDrawelValuesModel) then) =
      _$WithDrawelValuesModelCopyWithImpl<$Res, WithDrawelValuesModel>;
  @useResult
  $Res call({int id, num value});
}

/// @nodoc
class _$WithDrawelValuesModelCopyWithImpl<$Res,
        $Val extends WithDrawelValuesModel>
    implements $WithDrawelValuesModelCopyWith<$Res> {
  _$WithDrawelValuesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WithDrawelValuesModelImplCopyWith<$Res>
    implements $WithDrawelValuesModelCopyWith<$Res> {
  factory _$$WithDrawelValuesModelImplCopyWith(
          _$WithDrawelValuesModelImpl value,
          $Res Function(_$WithDrawelValuesModelImpl) then) =
      __$$WithDrawelValuesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, num value});
}

/// @nodoc
class __$$WithDrawelValuesModelImplCopyWithImpl<$Res>
    extends _$WithDrawelValuesModelCopyWithImpl<$Res,
        _$WithDrawelValuesModelImpl>
    implements _$$WithDrawelValuesModelImplCopyWith<$Res> {
  __$$WithDrawelValuesModelImplCopyWithImpl(_$WithDrawelValuesModelImpl _value,
      $Res Function(_$WithDrawelValuesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$WithDrawelValuesModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WithDrawelValuesModelImpl implements _WithDrawelValuesModel {
  _$WithDrawelValuesModelImpl({this.id = 0, this.value = 0});

  factory _$WithDrawelValuesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WithDrawelValuesModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final num value;

  @override
  String toString() {
    return 'WithDrawelValuesModel(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithDrawelValuesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithDrawelValuesModelImplCopyWith<_$WithDrawelValuesModelImpl>
      get copyWith => __$$WithDrawelValuesModelImplCopyWithImpl<
          _$WithDrawelValuesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WithDrawelValuesModelImplToJson(
      this,
    );
  }
}

abstract class _WithDrawelValuesModel implements WithDrawelValuesModel {
  factory _WithDrawelValuesModel({final int id, final num value}) =
      _$WithDrawelValuesModelImpl;

  factory _WithDrawelValuesModel.fromJson(Map<String, dynamic> json) =
      _$WithDrawelValuesModelImpl.fromJson;

  @override
  int get id;
  @override
  num get value;
  @override
  @JsonKey(ignore: true)
  _$$WithDrawelValuesModelImplCopyWith<_$WithDrawelValuesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
