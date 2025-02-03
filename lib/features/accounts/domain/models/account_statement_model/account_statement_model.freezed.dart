// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_statement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountStatementModel _$AccountStatementModelFromJson(
    Map<String, dynamic> json) {
  return _AccountStatementModel.fromJson(json);
}

/// @nodoc
mixin _$AccountStatementModel {
  List<TransactionModel> get transactions => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  String get endDate => throw _privateConstructorUsedError;

  /// Serializes this AccountStatementModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountStatementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountStatementModelCopyWith<AccountStatementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStatementModelCopyWith<$Res> {
  factory $AccountStatementModelCopyWith(AccountStatementModel value,
          $Res Function(AccountStatementModel) then) =
      _$AccountStatementModelCopyWithImpl<$Res, AccountStatementModel>;
  @useResult
  $Res call(
      {List<TransactionModel> transactions,
      @JsonKey(name: "start_date") String startDate,
      @JsonKey(name: "end_date") String endDate});
}

/// @nodoc
class _$AccountStatementModelCopyWithImpl<$Res,
        $Val extends AccountStatementModel>
    implements $AccountStatementModelCopyWith<$Res> {
  _$AccountStatementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountStatementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountStatementModelImplCopyWith<$Res>
    implements $AccountStatementModelCopyWith<$Res> {
  factory _$$AccountStatementModelImplCopyWith(
          _$AccountStatementModelImpl value,
          $Res Function(_$AccountStatementModelImpl) then) =
      __$$AccountStatementModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TransactionModel> transactions,
      @JsonKey(name: "start_date") String startDate,
      @JsonKey(name: "end_date") String endDate});
}

/// @nodoc
class __$$AccountStatementModelImplCopyWithImpl<$Res>
    extends _$AccountStatementModelCopyWithImpl<$Res,
        _$AccountStatementModelImpl>
    implements _$$AccountStatementModelImplCopyWith<$Res> {
  __$$AccountStatementModelImplCopyWithImpl(_$AccountStatementModelImpl _value,
      $Res Function(_$AccountStatementModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountStatementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$AccountStatementModelImpl(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountStatementModelImpl implements _AccountStatementModel {
  const _$AccountStatementModelImpl(
      {final List<TransactionModel> transactions = const [],
      @JsonKey(name: "start_date") this.startDate = "",
      @JsonKey(name: "end_date") this.endDate = ""})
      : _transactions = transactions;

  factory _$AccountStatementModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountStatementModelImplFromJson(json);

  final List<TransactionModel> _transactions;
  @override
  @JsonKey()
  List<TransactionModel> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  @JsonKey(name: "start_date")
  final String startDate;
  @override
  @JsonKey(name: "end_date")
  final String endDate;

  @override
  String toString() {
    return 'AccountStatementModel(transactions: $transactions, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStatementModelImpl &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_transactions), startDate, endDate);

  /// Create a copy of AccountStatementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStatementModelImplCopyWith<_$AccountStatementModelImpl>
      get copyWith => __$$AccountStatementModelImplCopyWithImpl<
          _$AccountStatementModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountStatementModelImplToJson(
      this,
    );
  }
}

abstract class _AccountStatementModel implements AccountStatementModel {
  const factory _AccountStatementModel(
          {final List<TransactionModel> transactions,
          @JsonKey(name: "start_date") final String startDate,
          @JsonKey(name: "end_date") final String endDate}) =
      _$AccountStatementModelImpl;

  factory _AccountStatementModel.fromJson(Map<String, dynamic> json) =
      _$AccountStatementModelImpl.fromJson;

  @override
  List<TransactionModel> get transactions;
  @override
  @JsonKey(name: "start_date")
  String get startDate;
  @override
  @JsonKey(name: "end_date")
  String get endDate;

  /// Create a copy of AccountStatementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountStatementModelImplCopyWith<_$AccountStatementModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) {
  return _TransactionModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionModel {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;
  num get runningBalance => throw _privateConstructorUsedError;

  /// Serializes this TransactionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res, TransactionModel>;
  @useResult
  $Res call({int id, String type, String date, num amount, num runningBalance});
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res, $Val extends TransactionModel>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? date = null,
    Object? amount = null,
    Object? runningBalance = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      runningBalance: null == runningBalance
          ? _value.runningBalance
          : runningBalance // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionModelImplCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$$TransactionModelImplCopyWith(_$TransactionModelImpl value,
          $Res Function(_$TransactionModelImpl) then) =
      __$$TransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String type, String date, num amount, num runningBalance});
}

/// @nodoc
class __$$TransactionModelImplCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res, _$TransactionModelImpl>
    implements _$$TransactionModelImplCopyWith<$Res> {
  __$$TransactionModelImplCopyWithImpl(_$TransactionModelImpl _value,
      $Res Function(_$TransactionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? date = null,
    Object? amount = null,
    Object? runningBalance = null,
  }) {
    return _then(_$TransactionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      runningBalance: null == runningBalance
          ? _value.runningBalance
          : runningBalance // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionModelImpl implements _TransactionModel {
  const _$TransactionModelImpl(
      {this.id = 0,
      this.type = "",
      this.date = "",
      this.amount = 0,
      this.runningBalance = 0});

  factory _$TransactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final num amount;
  @override
  @JsonKey()
  final num runningBalance;

  @override
  String toString() {
    return 'TransactionModel(id: $id, type: $type, date: $date, amount: $amount, runningBalance: $runningBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.runningBalance, runningBalance) ||
                other.runningBalance == runningBalance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, date, amount, runningBalance);

  /// Create a copy of TransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionModelImplCopyWith<_$TransactionModelImpl> get copyWith =>
      __$$TransactionModelImplCopyWithImpl<_$TransactionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionModel implements TransactionModel {
  const factory _TransactionModel(
      {final int id,
      final String type,
      final String date,
      final num amount,
      final num runningBalance}) = _$TransactionModelImpl;

  factory _TransactionModel.fromJson(Map<String, dynamic> json) =
      _$TransactionModelImpl.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  String get date;
  @override
  num get amount;
  @override
  num get runningBalance;

  /// Create a copy of TransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionModelImplCopyWith<_$TransactionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
