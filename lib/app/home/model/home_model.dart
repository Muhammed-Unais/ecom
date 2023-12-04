// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'home_model.freezed.dart';
part 'home_model.g.dart';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

String homeModelToJson(HomeModel data) => json.encode(data.toJson());

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    required int success,
    required String message,
    required List<Banner1> banner1,
    @JsonKey(name: "best_seller") required List<dynamic> bestSeller,
    required List<CategoryElement> categories,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}

@freezed
class Banner1 with _$Banner1 {
  const factory Banner1({
    required int id,
    @JsonKey(name: "link_type") required int linkType,
    @JsonKey(name: "link_value") required String linkValue,
    required String image,
    required String title,
    @JsonKey(name: "sub_title") required String subTitle,
    required dynamic logo,
  }) = _Banner1;

  factory Banner1.fromJson(Map<String, dynamic> json) =>
      _$Banner1FromJson(json);
}

@freezed
class CategoryElement with _$CategoryElement {
  const factory CategoryElement({
    required CategoryCategory category,
  }) = _CategoryElement;

  factory CategoryElement.fromJson(Map<String, dynamic> json) =>
      _$CategoryElementFromJson(json);
}

@freezed
class CategoryCategory with _$CategoryCategory {
  const factory CategoryCategory({
    required int id,
    required String slug,
    required String image,
    required String name,
    required String description,
  }) = _CategoryCategory;

  factory CategoryCategory.fromJson(Map<String, dynamic> json) =>
      _$CategoryCategoryFromJson(json);
}
