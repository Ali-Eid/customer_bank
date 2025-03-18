// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_deposit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TermsDepositModel _$TermsDepositModelFromJson(Map<String, dynamic> json) {
  return _TermsDepositModel.fromJson(json);
}

/// @nodoc
mixin _$TermsDepositModel {
  @JsonKey(name: "terms_deposit")
  TermsDepositDataModel get termsDeposit => throw _privateConstructorUsedError;

  /// Serializes this TermsDepositModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TermsDepositModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TermsDepositModelCopyWith<TermsDepositModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsDepositModelCopyWith<$Res> {
  factory $TermsDepositModelCopyWith(
          TermsDepositModel value, $Res Function(TermsDepositModel) then) =
      _$TermsDepositModelCopyWithImpl<$Res, TermsDepositModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "terms_deposit") TermsDepositDataModel termsDeposit});

  $TermsDepositDataModelCopyWith<$Res> get termsDeposit;
}

/// @nodoc
class _$TermsDepositModelCopyWithImpl<$Res, $Val extends TermsDepositModel>
    implements $TermsDepositModelCopyWith<$Res> {
  _$TermsDepositModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TermsDepositModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termsDeposit = null,
  }) {
    return _then(_value.copyWith(
      termsDeposit: null == termsDeposit
          ? _value.termsDeposit
          : termsDeposit // ignore: cast_nullable_to_non_nullable
              as TermsDepositDataModel,
    ) as $Val);
  }

  /// Create a copy of TermsDepositModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TermsDepositDataModelCopyWith<$Res> get termsDeposit {
    return $TermsDepositDataModelCopyWith<$Res>(_value.termsDeposit, (value) {
      return _then(_value.copyWith(termsDeposit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TermsDepositModelImplCopyWith<$Res>
    implements $TermsDepositModelCopyWith<$Res> {
  factory _$$TermsDepositModelImplCopyWith(_$TermsDepositModelImpl value,
          $Res Function(_$TermsDepositModelImpl) then) =
      __$$TermsDepositModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "terms_deposit") TermsDepositDataModel termsDeposit});

  @override
  $TermsDepositDataModelCopyWith<$Res> get termsDeposit;
}

/// @nodoc
class __$$TermsDepositModelImplCopyWithImpl<$Res>
    extends _$TermsDepositModelCopyWithImpl<$Res, _$TermsDepositModelImpl>
    implements _$$TermsDepositModelImplCopyWith<$Res> {
  __$$TermsDepositModelImplCopyWithImpl(_$TermsDepositModelImpl _value,
      $Res Function(_$TermsDepositModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TermsDepositModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termsDeposit = null,
  }) {
    return _then(_$TermsDepositModelImpl(
      null == termsDeposit
          ? _value.termsDeposit
          : termsDeposit // ignore: cast_nullable_to_non_nullable
              as TermsDepositDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TermsDepositModelImpl implements _TermsDepositModel {
  _$TermsDepositModelImpl(@JsonKey(name: "terms_deposit") this.termsDeposit);

  factory _$TermsDepositModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TermsDepositModelImplFromJson(json);

  @override
  @JsonKey(name: "terms_deposit")
  final TermsDepositDataModel termsDeposit;

  @override
  String toString() {
    return 'TermsDepositModel(termsDeposit: $termsDeposit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsDepositModelImpl &&
            (identical(other.termsDeposit, termsDeposit) ||
                other.termsDeposit == termsDeposit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, termsDeposit);

  /// Create a copy of TermsDepositModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsDepositModelImplCopyWith<_$TermsDepositModelImpl> get copyWith =>
      __$$TermsDepositModelImplCopyWithImpl<_$TermsDepositModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TermsDepositModelImplToJson(
      this,
    );
  }
}

abstract class _TermsDepositModel implements TermsDepositModel {
  factory _TermsDepositModel(
      @JsonKey(name: "terms_deposit")
      final TermsDepositDataModel termsDeposit) = _$TermsDepositModelImpl;

  factory _TermsDepositModel.fromJson(Map<String, dynamic> json) =
      _$TermsDepositModelImpl.fromJson;

  @override
  @JsonKey(name: "terms_deposit")
  TermsDepositDataModel get termsDeposit;

  /// Create a copy of TermsDepositModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TermsDepositModelImplCopyWith<_$TermsDepositModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TermsDepositDataModel _$TermsDepositDataModelFromJson(
    Map<String, dynamic> json) {
  return _TermsDepositDataModel.fromJson(json);
}

/// @nodoc
mixin _$TermsDepositDataModel {
  int get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  PackageTermsDepositModel get package => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;

  /// Serializes this TermsDepositDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TermsDepositDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TermsDepositDataModelCopyWith<TermsDepositDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsDepositDataModelCopyWith<$Res> {
  factory $TermsDepositDataModelCopyWith(TermsDepositDataModel value,
          $Res Function(TermsDepositDataModel) then) =
      _$TermsDepositDataModelCopyWithImpl<$Res, TermsDepositDataModel>;
  @useResult
  $Res call(
      {int id,
      String status,
      PackageTermsDepositModel package,
      int amount,
      String note});

  $PackageTermsDepositModelCopyWith<$Res> get package;
}

/// @nodoc
class _$TermsDepositDataModelCopyWithImpl<$Res,
        $Val extends TermsDepositDataModel>
    implements $TermsDepositDataModelCopyWith<$Res> {
  _$TermsDepositDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TermsDepositDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? package = null,
    Object? amount = null,
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageTermsDepositModel,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of TermsDepositDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageTermsDepositModelCopyWith<$Res> get package {
    return $PackageTermsDepositModelCopyWith<$Res>(_value.package, (value) {
      return _then(_value.copyWith(package: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TermsDepositDataModelImplCopyWith<$Res>
    implements $TermsDepositDataModelCopyWith<$Res> {
  factory _$$TermsDepositDataModelImplCopyWith(
          _$TermsDepositDataModelImpl value,
          $Res Function(_$TermsDepositDataModelImpl) then) =
      __$$TermsDepositDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String status,
      PackageTermsDepositModel package,
      int amount,
      String note});

  @override
  $PackageTermsDepositModelCopyWith<$Res> get package;
}

/// @nodoc
class __$$TermsDepositDataModelImplCopyWithImpl<$Res>
    extends _$TermsDepositDataModelCopyWithImpl<$Res,
        _$TermsDepositDataModelImpl>
    implements _$$TermsDepositDataModelImplCopyWith<$Res> {
  __$$TermsDepositDataModelImplCopyWithImpl(_$TermsDepositDataModelImpl _value,
      $Res Function(_$TermsDepositDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TermsDepositDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? package = null,
    Object? amount = null,
    Object? note = null,
  }) {
    return _then(_$TermsDepositDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageTermsDepositModel,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TermsDepositDataModelImpl implements _TermsDepositDataModel {
  const _$TermsDepositDataModelImpl(
      {this.id = 0,
      this.status = "",
      this.package = const PackageTermsDepositModel(),
      this.amount = 0,
      this.note = ""});

  factory _$TermsDepositDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TermsDepositDataModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final PackageTermsDepositModel package;
  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final String note;

  @override
  String toString() {
    return 'TermsDepositDataModel(id: $id, status: $status, package: $package, amount: $amount, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsDepositDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, status, package, amount, note);

  /// Create a copy of TermsDepositDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsDepositDataModelImplCopyWith<_$TermsDepositDataModelImpl>
      get copyWith => __$$TermsDepositDataModelImplCopyWithImpl<
          _$TermsDepositDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TermsDepositDataModelImplToJson(
      this,
    );
  }
}

abstract class _TermsDepositDataModel implements TermsDepositDataModel {
  const factory _TermsDepositDataModel(
      {final int id,
      final String status,
      final PackageTermsDepositModel package,
      final int amount,
      final String note}) = _$TermsDepositDataModelImpl;

  factory _TermsDepositDataModel.fromJson(Map<String, dynamic> json) =
      _$TermsDepositDataModelImpl.fromJson;

  @override
  int get id;
  @override
  String get status;
  @override
  PackageTermsDepositModel get package;
  @override
  int get amount;
  @override
  String get note;

  /// Create a copy of TermsDepositDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TermsDepositDataModelImplCopyWith<_$TermsDepositDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
