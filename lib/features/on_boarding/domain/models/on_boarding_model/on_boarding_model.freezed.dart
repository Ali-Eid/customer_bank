// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_boarding_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnBoardingModel _$OnBoardingModelFromJson(Map<String, dynamic> json) {
  return _OnBoardingModel.fromJson(json);
}

/// @nodoc
mixin _$OnBoardingModel {
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnBoardingModelCopyWith<OnBoardingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingModelCopyWith<$Res> {
  factory $OnBoardingModelCopyWith(
          OnBoardingModel value, $Res Function(OnBoardingModel) then) =
      _$OnBoardingModelCopyWithImpl<$Res, OnBoardingModel>;
  @useResult
  $Res call({String title, String subTitle, String image});
}

/// @nodoc
class _$OnBoardingModelCopyWithImpl<$Res, $Val extends OnBoardingModel>
    implements $OnBoardingModelCopyWith<$Res> {
  _$OnBoardingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnBoardingModelImplCopyWith<$Res>
    implements $OnBoardingModelCopyWith<$Res> {
  factory _$$OnBoardingModelImplCopyWith(_$OnBoardingModelImpl value,
          $Res Function(_$OnBoardingModelImpl) then) =
      __$$OnBoardingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String subTitle, String image});
}

/// @nodoc
class __$$OnBoardingModelImplCopyWithImpl<$Res>
    extends _$OnBoardingModelCopyWithImpl<$Res, _$OnBoardingModelImpl>
    implements _$$OnBoardingModelImplCopyWith<$Res> {
  __$$OnBoardingModelImplCopyWithImpl(
      _$OnBoardingModelImpl _value, $Res Function(_$OnBoardingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? image = null,
  }) {
    return _then(_$OnBoardingModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnBoardingModelImpl implements _OnBoardingModel {
  _$OnBoardingModelImpl({this.title = "", this.subTitle = "", this.image = ""});

  factory _$OnBoardingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnBoardingModelImplFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String subTitle;
  @override
  @JsonKey()
  final String image;

  @override
  String toString() {
    return 'OnBoardingModel(title: $title, subTitle: $subTitle, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBoardingModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, subTitle, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBoardingModelImplCopyWith<_$OnBoardingModelImpl> get copyWith =>
      __$$OnBoardingModelImplCopyWithImpl<_$OnBoardingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnBoardingModelImplToJson(
      this,
    );
  }
}

abstract class _OnBoardingModel implements OnBoardingModel {
  factory _OnBoardingModel(
      {final String title,
      final String subTitle,
      final String image}) = _$OnBoardingModelImpl;

  factory _OnBoardingModel.fromJson(Map<String, dynamic> json) =
      _$OnBoardingModelImpl.fromJson;

  @override
  String get title;
  @override
  String get subTitle;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$OnBoardingModelImplCopyWith<_$OnBoardingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
