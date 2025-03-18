// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_chequebook_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PageChequebookModel _$PageChequebookModelFromJson(Map<String, dynamic> json) {
  return Page_ChequebookModel.fromJson(json);
}

/// @nodoc
mixin _$PageChequebookModel {
  int get id => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this PageChequebookModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PageChequebookModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageChequebookModelCopyWith<PageChequebookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageChequebookModelCopyWith<$Res> {
  factory $PageChequebookModelCopyWith(
          PageChequebookModel value, $Res Function(PageChequebookModel) then) =
      _$PageChequebookModelCopyWithImpl<$Res, PageChequebookModel>;
  @useResult
  $Res call({int id, int value, String description});
}

/// @nodoc
class _$PageChequebookModelCopyWithImpl<$Res, $Val extends PageChequebookModel>
    implements $PageChequebookModelCopyWith<$Res> {
  _$PageChequebookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageChequebookModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Page_ChequebookModelImplCopyWith<$Res>
    implements $PageChequebookModelCopyWith<$Res> {
  factory _$$Page_ChequebookModelImplCopyWith(_$Page_ChequebookModelImpl value,
          $Res Function(_$Page_ChequebookModelImpl) then) =
      __$$Page_ChequebookModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int value, String description});
}

/// @nodoc
class __$$Page_ChequebookModelImplCopyWithImpl<$Res>
    extends _$PageChequebookModelCopyWithImpl<$Res, _$Page_ChequebookModelImpl>
    implements _$$Page_ChequebookModelImplCopyWith<$Res> {
  __$$Page_ChequebookModelImplCopyWithImpl(_$Page_ChequebookModelImpl _value,
      $Res Function(_$Page_ChequebookModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageChequebookModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? description = null,
  }) {
    return _then(_$Page_ChequebookModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Page_ChequebookModelImpl implements Page_ChequebookModel {
  const _$Page_ChequebookModelImpl(
      {this.id = 0, this.value = 0, this.description = ""});

  factory _$Page_ChequebookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$Page_ChequebookModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int value;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'PageChequebookModel(id: $id, value: $value, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Page_ChequebookModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, description);

  /// Create a copy of PageChequebookModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Page_ChequebookModelImplCopyWith<_$Page_ChequebookModelImpl>
      get copyWith =>
          __$$Page_ChequebookModelImplCopyWithImpl<_$Page_ChequebookModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Page_ChequebookModelImplToJson(
      this,
    );
  }
}

abstract class Page_ChequebookModel implements PageChequebookModel {
  const factory Page_ChequebookModel(
      {final int id,
      final int value,
      final String description}) = _$Page_ChequebookModelImpl;

  factory Page_ChequebookModel.fromJson(Map<String, dynamic> json) =
      _$Page_ChequebookModelImpl.fromJson;

  @override
  int get id;
  @override
  int get value;
  @override
  String get description;

  /// Create a copy of PageChequebookModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Page_ChequebookModelImplCopyWith<_$Page_ChequebookModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
