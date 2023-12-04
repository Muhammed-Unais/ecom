// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'products_model.freezed.dart';
part 'products_model.g.dart';

ProductsModel productsModelFromJson(String str) =>
    ProductsModel.fromJson(json.decode(str));

String productsModelToJson(ProductsModel data) => json.encode(data.toJson());

@freezed
class ProductsModel with _$ProductsModel {
  const factory ProductsModel({
    @JsonKey(name: "success") required int success,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "products") required Products products,
  }) = _ProductsModel;

  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);
}

@freezed
class Products with _$Products {
  const factory Products({
    @JsonKey(name: "return") required Return productsReturn,
    @JsonKey(name: "categories") required List<Category> categories,
    @JsonKey(name: "new_products") required List<SingleProduct> newProducts,
  }) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    @JsonKey(name: "slug") required String slug,
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "parent_id") required int parentId,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class SingleProduct with _$SingleProduct {
  const factory SingleProduct({
    @JsonKey(name: "slug") required String slug,
    @JsonKey(name: "status") required int status,
    @JsonKey(name: "storeslug") required String storeslug,
    @JsonKey(name: "purchase_reward") required String purchaseReward,
    @JsonKey(name: "reward_point") required String rewardPoint,
    @JsonKey(name: "code") required String code,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "app_description") required String appDescription,
    @JsonKey(name: "stock") required String stock,
    @JsonKey(name: "symbol_left") required String symbolLeft,
    @JsonKey(name: "symbol_right") required String symbolRight,
    @JsonKey(name: "oldprice") required String oldprice,
    @JsonKey(name: "price") required String price,
    @JsonKey(name: "discount") required String discount,
    @JsonKey(name: "rating") required String rating,
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "wishlist") required int wishlist,
    @JsonKey(name: "cart") required int cart,
    @JsonKey(name: "store") required String store,
    @JsonKey(name: "manufacturer") required String manufacturer,
  }) = _SingleProduct;

  factory SingleProduct.fromJson(Map<String, dynamic> json) =>
      _$SingleProductFromJson(json);
}

@freezed
class Return with _$Return {
  const factory Return({
    @JsonKey(name: "current_page") required int currentPage,
    @JsonKey(name: "data") required List<SingleProduct> data,
    @JsonKey(name: "first_page_url") required String firstPageUrl,
    @JsonKey(name: "from") required int from,
    @JsonKey(name: "last_page") required int lastPage,
    @JsonKey(name: "last_page_url") required String lastPageUrl,
    @JsonKey(name: "links") required List<Link> links,
    @JsonKey(name: "next_page_url") required dynamic nextPageUrl,
    @JsonKey(name: "path") required String path,
    @JsonKey(name: "per_page") required int perPage,
    @JsonKey(name: "prev_page_url") required dynamic prevPageUrl,
    @JsonKey(name: "to") required int to,
    @JsonKey(name: "total") required int total,
  }) = _Return;

  factory Return.fromJson(Map<String, dynamic> json) => _$ReturnFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    @JsonKey(name: "url") required String? url,
    @JsonKey(name: "label") required String label,
    @JsonKey(name: "active") required bool active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
