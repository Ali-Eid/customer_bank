import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_inactive_card_model.freezed.dart';
part 'request_inactive_card_model.g.dart';

@freezed
abstract class RequestInactiveCardModel with _$RequestInactiveCardModel {
  factory RequestInactiveCardModel({
// ignore: invalid_annotation_target
    @JsonKey(name: "card_id") required int cardId,
    required String message,
  }) = _RequestInactiveCardModel;
  factory RequestInactiveCardModel.fromJson(Map<String, dynamic> json) =>
      _$RequestInactiveCardModelFromJson(json);
}
