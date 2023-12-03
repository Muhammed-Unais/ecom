// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      success: json['success'] as int,
      message: json['message'] as String,
      banner1: (json['banner1'] as List<dynamic>)
          .map((e) => Banner1.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestSeller: json['best_seller'] as List<dynamic>,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'banner1': instance.banner1,
      'best_seller': instance.bestSeller,
      'categories': instance.categories,
    };

_$Banner1Impl _$$Banner1ImplFromJson(Map<String, dynamic> json) =>
    _$Banner1Impl(
      id: json['id'] as int,
      linkType: json['link_type'] as int,
      linkValue: json['link_value'] as String,
      image: json['image'] as String,
      title: json['title'] as String,
      subTitle: json['sub_title'] as String,
      logo: json['logo'],
    );

Map<String, dynamic> _$$Banner1ImplToJson(_$Banner1Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link_type': instance.linkType,
      'link_value': instance.linkValue,
      'image': instance.image,
      'title': instance.title,
      'sub_title': instance.subTitle,
      'logo': instance.logo,
    };

_$CategoryElementImpl _$$CategoryElementImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryElementImpl(
      category:
          CategoryCategory.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryElementImplToJson(
        _$CategoryElementImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
    };

_$CategoryCategoryImpl _$$CategoryCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryCategoryImpl(
      id: json['id'] as int,
      slug: json['slug'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$CategoryCategoryImplToJson(
        _$CategoryCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
    };
