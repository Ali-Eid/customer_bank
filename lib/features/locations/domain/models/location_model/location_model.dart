import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
abstract class LocationModel with _$LocationModel {
  factory LocationModel({
    @Default(0) int id,
    @Default("") String name,
    @Default(0) double lat,
    @Default(0) double long,
  }) = _LocationModel;
  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
