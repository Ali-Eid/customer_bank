import 'package:freezed_annotation/freezed_annotation.dart';

part 'with_drawel_values_model.freezed.dart';
part 'with_drawel_values_model.g.dart';

@freezed
abstract class WithDrawelValuesModel with _$WithDrawelValuesModel {
  factory WithDrawelValuesModel({
    @Default(0) int id,
    @Default(0) num value,
  }) = _WithDrawelValuesModel;
  factory WithDrawelValuesModel.fromJson(Map<String, dynamic> json) =>
      _$WithDrawelValuesModelFromJson(json);
}
