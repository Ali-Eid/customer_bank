import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_chequebook_model.freezed.dart';
part 'page_chequebook_model.g.dart';

@freezed
abstract class PageChequebookModel with _$PageChequebookModel {
  const factory PageChequebookModel({
    @Default(0) int id,
    @Default(0) int value,
    @Default("") String description,
  }) = Page_ChequebookModel;
  factory PageChequebookModel.fromJson(Map<String, dynamic> json) =>
      _$PageChequebookModelFromJson(json);
}
