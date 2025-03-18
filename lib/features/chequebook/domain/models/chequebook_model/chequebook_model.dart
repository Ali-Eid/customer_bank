// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';

import '../page_chequebook_model/page_chequebook_model.dart';

part 'chequebook_model.freezed.dart';
part 'chequebook_model.g.dart';

@freezed
abstract class ChequebookModel with _$ChequebookModel {
  factory ChequebookModel({
    @Default(0) int id,
    @Default("") @JsonKey(name: "serial_number") String serialNumber,
    @Default(AccountModel()) AccountModel account,
    @Default(PageChequebookModel()) PageChequebookModel page,
  }) = _ChequebookModel;
  factory ChequebookModel.fromJson(Map<String, dynamic> json) =>
      _$ChequebookModelFromJson(json);
}
