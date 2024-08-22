import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_boarding_model.freezed.dart';
part 'on_boarding_model.g.dart';

@freezed
abstract class OnBoardingModel with _$OnBoardingModel {
  factory OnBoardingModel({
    @Default("") String title,
    @Default("") String subTitle,
    @Default("") String image,
  }) = _OnBoardingModel;
  factory OnBoardingModel.fromJson(Map<String, dynamic> json) =>
      _$OnBoardingModelFromJson(json);
}
