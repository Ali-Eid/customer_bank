// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chequebook_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChequebookModel _$ChequebookModelFromJson(Map<String, dynamic> json) {
  return _ChequebookModel.fromJson(json);
}

/// @nodoc
mixin _$ChequebookModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "serial_number")
  String get serialNumber => throw _privateConstructorUsedError;
  AccountModel get account => throw _privateConstructorUsedError;
  PageChequebookModel get page => throw _privateConstructorUsedError;

  /// Serializes this ChequebookModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChequebookModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChequebookModelCopyWith<ChequebookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChequebookModelCopyWith<$Res> {
  factory $ChequebookModelCopyWith(
          ChequebookModel value, $Res Function(ChequebookModel) then) =
      _$ChequebookModelCopyWithImpl<$Res, ChequebookModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "serial_number") String serialNumber,
      AccountModel account,
      PageChequebookModel page});

  $AccountModelCopyWith<$Res> get account;
  $PageChequebookModelCopyWith<$Res> get page;
}

/// @nodoc
class _$ChequebookModelCopyWithImpl<$Res, $Val extends ChequebookModel>
    implements $ChequebookModelCopyWith<$Res> {
  _$ChequebookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChequebookModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serialNumber = null,
    Object? account = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PageChequebookModel,
    ) as $Val);
  }

  /// Create a copy of ChequebookModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountModelCopyWith<$Res> get account {
    return $AccountModelCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }

  /// Create a copy of ChequebookModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageChequebookModelCopyWith<$Res> get page {
    return $PageChequebookModelCopyWith<$Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChequebookModelImplCopyWith<$Res>
    implements $ChequebookModelCopyWith<$Res> {
  factory _$$ChequebookModelImplCopyWith(_$ChequebookModelImpl value,
          $Res Function(_$ChequebookModelImpl) then) =
      __$$ChequebookModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "serial_number") String serialNumber,
      AccountModel account,
      PageChequebookModel page});

  @override
  $AccountModelCopyWith<$Res> get account;
  @override
  $PageChequebookModelCopyWith<$Res> get page;
}

/// @nodoc
class __$$ChequebookModelImplCopyWithImpl<$Res>
    extends _$ChequebookModelCopyWithImpl<$Res, _$ChequebookModelImpl>
    implements _$$ChequebookModelImplCopyWith<$Res> {
  __$$ChequebookModelImplCopyWithImpl(
      _$ChequebookModelImpl _value, $Res Function(_$ChequebookModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChequebookModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serialNumber = null,
    Object? account = null,
    Object? page = null,
  }) {
    return _then(_$ChequebookModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PageChequebookModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChequebookModelImpl implements _ChequebookModel {
  _$ChequebookModelImpl(
      {this.id = 0,
      @JsonKey(name: "serial_number") this.serialNumber = "",
      this.account = const AccountModel(),
      this.page = const PageChequebookModel()});

  factory _$ChequebookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChequebookModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: "serial_number")
  final String serialNumber;
  @override
  @JsonKey()
  final AccountModel account;
  @override
  @JsonKey()
  final PageChequebookModel page;

  @override
  String toString() {
    return 'ChequebookModel(id: $id, serialNumber: $serialNumber, account: $account, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChequebookModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, serialNumber, account, page);

  /// Create a copy of ChequebookModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChequebookModelImplCopyWith<_$ChequebookModelImpl> get copyWith =>
      __$$ChequebookModelImplCopyWithImpl<_$ChequebookModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChequebookModelImplToJson(
      this,
    );
  }
}

abstract class _ChequebookModel implements ChequebookModel {
  factory _ChequebookModel(
      {final int id,
      @JsonKey(name: "serial_number") final String serialNumber,
      final AccountModel account,
      final PageChequebookModel page}) = _$ChequebookModelImpl;

  factory _ChequebookModel.fromJson(Map<String, dynamic> json) =
      _$ChequebookModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "serial_number")
  String get serialNumber;
  @override
  AccountModel get account;
  @override
  PageChequebookModel get page;

  /// Create a copy of ChequebookModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChequebookModelImplCopyWith<_$ChequebookModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
