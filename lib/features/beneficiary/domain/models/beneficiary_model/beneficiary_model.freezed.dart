// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BeneficiaryModel _$BeneficiaryModelFromJson(Map<String, dynamic> json) {
  return _BeneficiaryModel.fromJson(json);
}

/// @nodoc
mixin _$BeneficiaryModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "full_name")
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "account_number")
  String get accountNumber => throw _privateConstructorUsedError;
  StaticTextModel get relationship => throw _privateConstructorUsedError;
  @JsonKey(name: "relationship_other")
  String? get relationshipOther => throw _privateConstructorUsedError;

  /// Serializes this BeneficiaryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BeneficiaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BeneficiaryModelCopyWith<BeneficiaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiaryModelCopyWith<$Res> {
  factory $BeneficiaryModelCopyWith(
          BeneficiaryModel value, $Res Function(BeneficiaryModel) then) =
      _$BeneficiaryModelCopyWithImpl<$Res, BeneficiaryModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: "full_name") String fullName,
      @JsonKey(name: "account_number") String accountNumber,
      StaticTextModel relationship,
      @JsonKey(name: "relationship_other") String? relationshipOther});

  $StaticTextModelCopyWith<$Res> get relationship;
}

/// @nodoc
class _$BeneficiaryModelCopyWithImpl<$Res, $Val extends BeneficiaryModel>
    implements $BeneficiaryModelCopyWith<$Res> {
  _$BeneficiaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BeneficiaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? fullName = null,
    Object? accountNumber = null,
    Object? relationship = null,
    Object? relationshipOther = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as StaticTextModel,
      relationshipOther: freezed == relationshipOther
          ? _value.relationshipOther
          : relationshipOther // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of BeneficiaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaticTextModelCopyWith<$Res> get relationship {
    return $StaticTextModelCopyWith<$Res>(_value.relationship, (value) {
      return _then(_value.copyWith(relationship: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BeneficiaryModelImplCopyWith<$Res>
    implements $BeneficiaryModelCopyWith<$Res> {
  factory _$$BeneficiaryModelImplCopyWith(_$BeneficiaryModelImpl value,
          $Res Function(_$BeneficiaryModelImpl) then) =
      __$$BeneficiaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: "full_name") String fullName,
      @JsonKey(name: "account_number") String accountNumber,
      StaticTextModel relationship,
      @JsonKey(name: "relationship_other") String? relationshipOther});

  @override
  $StaticTextModelCopyWith<$Res> get relationship;
}

/// @nodoc
class __$$BeneficiaryModelImplCopyWithImpl<$Res>
    extends _$BeneficiaryModelCopyWithImpl<$Res, _$BeneficiaryModelImpl>
    implements _$$BeneficiaryModelImplCopyWith<$Res> {
  __$$BeneficiaryModelImplCopyWithImpl(_$BeneficiaryModelImpl _value,
      $Res Function(_$BeneficiaryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BeneficiaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? fullName = null,
    Object? accountNumber = null,
    Object? relationship = null,
    Object? relationshipOther = freezed,
  }) {
    return _then(_$BeneficiaryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as StaticTextModel,
      relationshipOther: freezed == relationshipOther
          ? _value.relationshipOther
          : relationshipOther // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeneficiaryModelImpl implements _BeneficiaryModel {
  _$BeneficiaryModelImpl(
      {this.id = 0,
      this.title = "",
      @JsonKey(name: "full_name") this.fullName = "",
      @JsonKey(name: "account_number") this.accountNumber = "",
      this.relationship = const StaticTextModel(),
      @JsonKey(name: "relationship_other") this.relationshipOther = ""});

  factory _$BeneficiaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeneficiaryModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey(name: "full_name")
  final String fullName;
  @override
  @JsonKey(name: "account_number")
  final String accountNumber;
  @override
  @JsonKey()
  final StaticTextModel relationship;
  @override
  @JsonKey(name: "relationship_other")
  final String? relationshipOther;

  @override
  String toString() {
    return 'BeneficiaryModel(id: $id, title: $title, fullName: $fullName, accountNumber: $accountNumber, relationship: $relationship, relationshipOther: $relationshipOther)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.relationshipOther, relationshipOther) ||
                other.relationshipOther == relationshipOther));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, fullName,
      accountNumber, relationship, relationshipOther);

  /// Create a copy of BeneficiaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryModelImplCopyWith<_$BeneficiaryModelImpl> get copyWith =>
      __$$BeneficiaryModelImplCopyWithImpl<_$BeneficiaryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeneficiaryModelImplToJson(
      this,
    );
  }
}

abstract class _BeneficiaryModel implements BeneficiaryModel {
  factory _BeneficiaryModel(
      {final int id,
      final String title,
      @JsonKey(name: "full_name") final String fullName,
      @JsonKey(name: "account_number") final String accountNumber,
      final StaticTextModel relationship,
      @JsonKey(name: "relationship_other")
      final String? relationshipOther}) = _$BeneficiaryModelImpl;

  factory _BeneficiaryModel.fromJson(Map<String, dynamic> json) =
      _$BeneficiaryModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: "full_name")
  String get fullName;
  @override
  @JsonKey(name: "account_number")
  String get accountNumber;
  @override
  StaticTextModel get relationship;
  @override
  @JsonKey(name: "relationship_other")
  String? get relationshipOther;

  /// Create a copy of BeneficiaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BeneficiaryModelImplCopyWith<_$BeneficiaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
