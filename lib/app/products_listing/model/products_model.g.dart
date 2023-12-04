// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsModelImpl _$$ProductsModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductsModelImpl(
      success: json['success'] as int,
      message: json['message'] as String,
      products: Products.fromJson(json['products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductsModelImplToJson(_$ProductsModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'products': instance.products,
    };

_$ProductsImpl _$$ProductsImplFromJson(Map<String, dynamic> json) =>
    _$ProductsImpl(
      productsReturn: Return.fromJson(json['return'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      newProducts: (json['new_products'] as List<dynamic>)
          .map((e) => SingleProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductsImplToJson(_$ProductsImpl instance) =>
    <String, dynamic>{
      'return': instance.productsReturn,
      'categories': instance.categories,
      'new_products': instance.newProducts,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      slug: json['slug'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      parentId: json['parent_id'] as int,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'image': instance.image,
      'name': instance.name,
      'parent_id': instance.parentId,
    };

_$SingleProductImpl _$$SingleProductImplFromJson(Map<String, dynamic> json) =>
    _$SingleProductImpl(
      slug: json['slug'] as String,
      status: json['status'] as int,
      storeslug: json['storeslug'] as String,
      purchaseReward: json['purchase_reward'] as String,
      rewardPoint: json['reward_point'] as String,
      code: json['code'] as String,
      name: json['name'] as String,
      appDescription: json['app_description'] as String,
      stock: json['stock'] as String,
      symbolLeft: json['symbol_left'] as String,
      symbolRight: json['symbol_right'] as String,
      oldprice: json['oldprice'] as String,
      price: json['price'] as String,
      discount: json['discount'] as String,
      rating: json['rating'] as String,
      image: json['image'] as String,
      wishlist: json['wishlist'] as int,
      cart: json['cart'] as int,
      store: json['store'] as String,
      manufacturer: json['manufacturer'] as String,
    );

Map<String, dynamic> _$$SingleProductImplToJson(_$SingleProductImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'status': instance.status,
      'storeslug': instance.storeslug,
      'purchase_reward': instance.purchaseReward,
      'reward_point': instance.rewardPoint,
      'code': instance.code,
      'name': instance.name,
      'app_description': instance.appDescription,
      'stock': instance.stock,
      'symbol_left': instance.symbolLeft,
      'symbol_right': instance.symbolRight,
      'oldprice': instance.oldprice,
      'price': instance.price,
      'discount': instance.discount,
      'rating': instance.rating,
      'image': instance.image,
      'wishlist': instance.wishlist,
      'cart': instance.cart,
      'store': instance.store,
      'manufacturer': instance.manufacturer,
    };

_$ReturnImpl _$$ReturnImplFromJson(Map<String, dynamic> json) => _$ReturnImpl(
      currentPage: json['current_page'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => SingleProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String,
      from: json['from'] as int,
      lastPage: json['last_page'] as int,
      lastPageUrl: json['last_page_url'] as String,
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'],
      path: json['path'] as String,
      perPage: json['per_page'] as int,
      prevPageUrl: json['prev_page_url'],
      to: json['to'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$ReturnImplToJson(_$ReturnImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
      url: json['url'] as String?,
      label: json['label'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
