// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_statement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountStatementModelImpl _$$AccountStatementModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountStatementModelImpl(
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map((e) => TransactionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      startDate: json['start_date'] as String? ?? "",
      endDate: json['end_date'] as String? ?? "",
      pdf: json['pdf_data'] as String? ?? "",
    );

Map<String, dynamic> _$$AccountStatementModelImplToJson(
        _$AccountStatementModelImpl instance) =>
    <String, dynamic>{
      'transactions': instance.transactions,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'pdf_data': instance.pdf,
    };

_$TransactionModelImpl _$$TransactionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      type: json['type'] as String? ?? "",
      date: json['date'] as String? ?? "",
      amount: json['amount'] as num? ?? 0,
      runningBalance: json['runningBalance'] as num? ?? 0,
    );

Map<String, dynamic> _$$TransactionModelImplToJson(
        _$TransactionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'date': instance.date,
      'amount': instance.amount,
      'runningBalance': instance.runningBalance,
    };
