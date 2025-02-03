// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'static_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StaticModel _$StaticModelFromJson(Map<String, dynamic> json) {
  return _StaticModel.fromJson(json);
}

/// @nodoc
mixin _$StaticModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this StaticModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaticModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaticModelCopyWith<StaticModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaticModelCopyWith<$Res> {
  factory $StaticModelCopyWith(
          StaticModel value, $Res Function(StaticModel) then) =
      _$StaticModelCopyWithImpl<$Res, StaticModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$StaticModelCopyWithImpl<$Res, $Val extends StaticModel>
    implements $StaticModelCopyWith<$Res> {
  _$StaticModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaticModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaticModelImplCopyWith<$Res>
    implements $StaticModelCopyWith<$Res> {
  factory _$$StaticModelImplCopyWith(
          _$StaticModelImpl value, $Res Function(_$StaticModelImpl) then) =
      __$$StaticModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$StaticModelImplCopyWithImpl<$Res>
    extends _$StaticModelCopyWithImpl<$Res, _$StaticModelImpl>
    implements _$$StaticModelImplCopyWith<$Res> {
  __$$StaticModelImplCopyWithImpl(
      _$StaticModelImpl _value, $Res Function(_$StaticModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaticModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$StaticModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaticModelImpl implements _StaticModel {
  const _$StaticModelImpl({this.id = 0, this.name = ""});

  factory _$StaticModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaticModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'StaticModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaticModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of StaticModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaticModelImplCopyWith<_$StaticModelImpl> get copyWith =>
      __$$StaticModelImplCopyWithImpl<_$StaticModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaticModelImplToJson(
      this,
    );
  }
}

abstract class _StaticModel implements StaticModel {
  const factory _StaticModel({final int id, final String name}) =
      _$StaticModelImpl;

  factory _StaticModel.fromJson(Map<String, dynamic> json) =
      _$StaticModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of StaticModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaticModelImplCopyWith<_$StaticModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StaticTextModel _$StaticTextModelFromJson(Map<String, dynamic> json) {
  return _StaticTextModel.fromJson(json);
}

/// @nodoc
mixin _$StaticTextModel {
  int get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this StaticTextModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaticTextModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaticTextModelCopyWith<StaticTextModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaticTextModelCopyWith<$Res> {
  factory $StaticTextModelCopyWith(
          StaticTextModel value, $Res Function(StaticTextModel) then) =
      _$StaticTextModelCopyWithImpl<$Res, StaticTextModel>;
  @useResult
  $Res call({int id, String text});
}

/// @nodoc
class _$StaticTextModelCopyWithImpl<$Res, $Val extends StaticTextModel>
    implements $StaticTextModelCopyWith<$Res> {
  _$StaticTextModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaticTextModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaticTextModelImplCopyWith<$Res>
    implements $StaticTextModelCopyWith<$Res> {
  factory _$$StaticTextModelImplCopyWith(_$StaticTextModelImpl value,
          $Res Function(_$StaticTextModelImpl) then) =
      __$$StaticTextModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String text});
}

/// @nodoc
class __$$StaticTextModelImplCopyWithImpl<$Res>
    extends _$StaticTextModelCopyWithImpl<$Res, _$StaticTextModelImpl>
    implements _$$StaticTextModelImplCopyWith<$Res> {
  __$$StaticTextModelImplCopyWithImpl(
      _$StaticTextModelImpl _value, $Res Function(_$StaticTextModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaticTextModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_$StaticTextModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaticTextModelImpl implements _StaticTextModel {
  const _$StaticTextModelImpl({this.id = 0, this.text = ""});

  factory _$StaticTextModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaticTextModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'StaticTextModel(id: $id, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaticTextModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  /// Create a copy of StaticTextModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaticTextModelImplCopyWith<_$StaticTextModelImpl> get copyWith =>
      __$$StaticTextModelImplCopyWithImpl<_$StaticTextModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaticTextModelImplToJson(
      this,
    );
  }
}

abstract class _StaticTextModel implements StaticTextModel {
  const factory _StaticTextModel({final int id, final String text}) =
      _$StaticTextModelImpl;

  factory _StaticTextModel.fromJson(Map<String, dynamic> json) =
      _$StaticTextModelImpl.fromJson;

  @override
  int get id;
  @override
  String get text;

  /// Create a copy of StaticTextModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaticTextModelImplCopyWith<_$StaticTextModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KeyValueModel _$KeyValueModelFromJson(Map<String, dynamic> json) {
  return _KeyValueModel.fromJson(json);
}

/// @nodoc
mixin _$KeyValueModel {
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this KeyValueModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeyValueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyValueModelCopyWith<KeyValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyValueModelCopyWith<$Res> {
  factory $KeyValueModelCopyWith(
          KeyValueModel value, $Res Function(KeyValueModel) then) =
      _$KeyValueModelCopyWithImpl<$Res, KeyValueModel>;
  @useResult
  $Res call({String key, String name});
}

/// @nodoc
class _$KeyValueModelCopyWithImpl<$Res, $Val extends KeyValueModel>
    implements $KeyValueModelCopyWith<$Res> {
  _$KeyValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeyValueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyValueModelImplCopyWith<$Res>
    implements $KeyValueModelCopyWith<$Res> {
  factory _$$KeyValueModelImplCopyWith(
          _$KeyValueModelImpl value, $Res Function(_$KeyValueModelImpl) then) =
      __$$KeyValueModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String name});
}

/// @nodoc
class __$$KeyValueModelImplCopyWithImpl<$Res>
    extends _$KeyValueModelCopyWithImpl<$Res, _$KeyValueModelImpl>
    implements _$$KeyValueModelImplCopyWith<$Res> {
  __$$KeyValueModelImplCopyWithImpl(
      _$KeyValueModelImpl _value, $Res Function(_$KeyValueModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeyValueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_$KeyValueModelImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyValueModelImpl implements _KeyValueModel {
  const _$KeyValueModelImpl({this.key = "", this.name = ""});

  factory _$KeyValueModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyValueModelImplFromJson(json);

  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'KeyValueModel(key: $key, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyValueModelImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, name);

  /// Create a copy of KeyValueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyValueModelImplCopyWith<_$KeyValueModelImpl> get copyWith =>
      __$$KeyValueModelImplCopyWithImpl<_$KeyValueModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyValueModelImplToJson(
      this,
    );
  }
}

abstract class _KeyValueModel implements KeyValueModel {
  const factory _KeyValueModel({final String key, final String name}) =
      _$KeyValueModelImpl;

  factory _KeyValueModel.fromJson(Map<String, dynamic> json) =
      _$KeyValueModelImpl.fromJson;

  @override
  String get key;
  @override
  String get name;

  /// Create a copy of KeyValueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyValueModelImplCopyWith<_$KeyValueModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
