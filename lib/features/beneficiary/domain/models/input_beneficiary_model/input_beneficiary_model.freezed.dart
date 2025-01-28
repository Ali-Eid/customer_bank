// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_beneficiary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputBeneficiaryModel _$InputBeneficiaryModelFromJson(
    Map<String, dynamic> json) {
  return _InputBeneficiaryModel.fromJson(json);
}

/// @nodoc
mixin _$InputBeneficiaryModel {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "full_name")
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "account_number")
  String get accountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "relationship_id")
  int get relationshipId => throw _privateConstructorUsedError;
  @JsonKey(name: "relationship_other")
  String? get relationshipOther => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputBeneficiaryModelCopyWith<InputBeneficiaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputBeneficiaryModelCopyWith<$Res> {
  factory $InputBeneficiaryModelCopyWith(InputBeneficiaryModel value,
          $Res Function(InputBeneficiaryModel) then) =
      _$InputBeneficiaryModelCopyWithImpl<$Res, InputBeneficiaryModel>;
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: "full_name") String fullName,
      @JsonKey(name: "account_number") String accountNumber,
      @JsonKey(name: "relationship_id") int relationshipId,
      @JsonKey(name: "relationship_other") String? relationshipOther});
}

/// @nodoc
class _$InputBeneficiaryModelCopyWithImpl<$Res,
        $Val extends InputBeneficiaryModel>
    implements $InputBeneficiaryModelCopyWith<$Res> {
  _$InputBeneficiaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? fullName = null,
    Object? accountNumber = null,
    Object? relationshipId = null,
    Object? relationshipOther = freezed,
  }) {
    return _then(_value.copyWith(
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
      relationshipId: null == relationshipId
          ? _value.relationshipId
          : relationshipId // ignore: cast_nullable_to_non_nullable
              as int,
      relationshipOther: freezed == relationshipOther
          ? _value.relationshipOther
          : relationshipOther // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputBeneficiaryModelImplCopyWith<$Res>
    implements $InputBeneficiaryModelCopyWith<$Res> {
  factory _$$InputBeneficiaryModelImplCopyWith(
          _$InputBeneficiaryModelImpl value,
          $Res Function(_$InputBeneficiaryModelImpl) then) =
      __$$InputBeneficiaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: "full_name") String fullName,
      @JsonKey(name: "account_number") String accountNumber,
      @JsonKey(name: "relationship_id") int relationshipId,
      @JsonKey(name: "relationship_other") String? relationshipOther});
}

/// @nodoc
class __$$InputBeneficiaryModelImplCopyWithImpl<$Res>
    extends _$InputBeneficiaryModelCopyWithImpl<$Res,
        _$InputBeneficiaryModelImpl>
    implements _$$InputBeneficiaryModelImplCopyWith<$Res> {
  __$$InputBeneficiaryModelImplCopyWithImpl(_$InputBeneficiaryModelImpl _value,
      $Res Function(_$InputBeneficiaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? fullName = null,
    Object? accountNumber = null,
    Object? relationshipId = null,
    Object? relationshipOther = freezed,
  }) {
    return _then(_$InputBeneficiaryModelImpl(
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
      relationshipId: null == relationshipId
          ? _value.relationshipId
          : relationshipId // ignore: cast_nullable_to_non_nullable
              as int,
      relationshipOther: freezed == relationshipOther
          ? _value.relationshipOther
          : relationshipOther // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputBeneficiaryModelImpl implements _InputBeneficiaryModel {
  _$InputBeneficiaryModelImpl(
      {required this.title,
      @JsonKey(name: "full_name") required this.fullName,
      @JsonKey(name: "account_number") required this.accountNumber,
      @JsonKey(name: "relationship_id") required this.relationshipId,
      @JsonKey(name: "relationship_other") this.relationshipOther});

  factory _$InputBeneficiaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputBeneficiaryModelImplFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: "full_name")
  final String fullName;
  @override
  @JsonKey(name: "account_number")
  final String accountNumber;
  @override
  @JsonKey(name: "relationship_id")
  final int relationshipId;
  @override
  @JsonKey(name: "relationship_other")
  final String? relationshipOther;

  @override
  String toString() {
    return 'InputBeneficiaryModel(title: $title, fullName: $fullName, accountNumber: $accountNumber, relationshipId: $relationshipId, relationshipOther: $relationshipOther)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputBeneficiaryModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.relationshipId, relationshipId) ||
                other.relationshipId == relationshipId) &&
            (identical(other.relationshipOther, relationshipOther) ||
                other.relationshipOther == relationshipOther));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, fullName, accountNumber,
      relationshipId, relationshipOther);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputBeneficiaryModelImplCopyWith<_$InputBeneficiaryModelImpl>
      get copyWith => __$$InputBeneficiaryModelImplCopyWithImpl<
          _$InputBeneficiaryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputBeneficiaryModelImplToJson(
      this,
    );
  }
}

abstract class _InputBeneficiaryModel implements InputBeneficiaryModel {
  factory _InputBeneficiaryModel(
      {required final String title,
      @JsonKey(name: "full_name") required final String fullName,
      @JsonKey(name: "account_number") required final String accountNumber,
      @JsonKey(name: "relationship_id") required final int relationshipId,
      @JsonKey(name: "relationship_other")
      final String? relationshipOther}) = _$InputBeneficiaryModelImpl;

  factory _InputBeneficiaryModel.fromJson(Map<String, dynamic> json) =
      _$InputBeneficiaryModelImpl.fromJson;

  @override
  String get title;
  @override
  @JsonKey(name: "full_name")
  String get fullName;
  @override
  @JsonKey(name: "account_number")
  String get accountNumber;
  @override
  @JsonKey(name: "relationship_id")
  int get relationshipId;
  @override
  @JsonKey(name: "relationship_other")
  String? get relationshipOther;
  @override
  @JsonKey(ignore: true)
  _$$InputBeneficiaryModelImplCopyWith<_$InputBeneficiaryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
