// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductsModel _$ProductsModelFromJson(Map<String, dynamic> json) {
  return _ProductsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductsModel {
  @JsonKey(name: "success")
  int get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  Products get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsModelCopyWith<ProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsModelCopyWith<$Res> {
  factory $ProductsModelCopyWith(
          ProductsModel value, $Res Function(ProductsModel) then) =
      _$ProductsModelCopyWithImpl<$Res, ProductsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") int success,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "products") Products products});

  $ProductsCopyWith<$Res> get products;
}

/// @nodoc
class _$ProductsModelCopyWithImpl<$Res, $Val extends ProductsModel>
    implements $ProductsModelCopyWith<$Res> {
  _$ProductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductsCopyWith<$Res> get products {
    return $ProductsCopyWith<$Res>(_value.products, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsModelImplCopyWith<$Res>
    implements $ProductsModelCopyWith<$Res> {
  factory _$$ProductsModelImplCopyWith(
          _$ProductsModelImpl value, $Res Function(_$ProductsModelImpl) then) =
      __$$ProductsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") int success,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "products") Products products});

  @override
  $ProductsCopyWith<$Res> get products;
}

/// @nodoc
class __$$ProductsModelImplCopyWithImpl<$Res>
    extends _$ProductsModelCopyWithImpl<$Res, _$ProductsModelImpl>
    implements _$$ProductsModelImplCopyWith<$Res> {
  __$$ProductsModelImplCopyWithImpl(
      _$ProductsModelImpl _value, $Res Function(_$ProductsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? products = null,
  }) {
    return _then(_$ProductsModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsModelImpl implements _ProductsModel {
  const _$ProductsModelImpl(
      {@JsonKey(name: "success") required this.success,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "products") required this.products});

  factory _$ProductsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsModelImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final int success;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "products")
  final Products products;

  @override
  String toString() {
    return 'ProductsModel(success: $success, message: $message, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.products, products) ||
                other.products == products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, products);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsModelImplCopyWith<_$ProductsModelImpl> get copyWith =>
      __$$ProductsModelImplCopyWithImpl<_$ProductsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsModelImplToJson(
      this,
    );
  }
}

abstract class _ProductsModel implements ProductsModel {
  const factory _ProductsModel(
          {@JsonKey(name: "success") required final int success,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "products") required final Products products}) =
      _$ProductsModelImpl;

  factory _ProductsModel.fromJson(Map<String, dynamic> json) =
      _$ProductsModelImpl.fromJson;

  @override
  @JsonKey(name: "success")
  int get success;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "products")
  Products get products;
  @override
  @JsonKey(ignore: true)
  _$$ProductsModelImplCopyWith<_$ProductsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Products _$ProductsFromJson(Map<String, dynamic> json) {
  return _Products.fromJson(json);
}

/// @nodoc
mixin _$Products {
  @JsonKey(name: "return")
  Return get productsReturn => throw _privateConstructorUsedError;
  @JsonKey(name: "categories")
  List<Category> get categories => throw _privateConstructorUsedError;
  @JsonKey(name: "new_products")
  List<SingleProduct> get newProducts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsCopyWith<Products> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCopyWith<$Res> {
  factory $ProductsCopyWith(Products value, $Res Function(Products) then) =
      _$ProductsCopyWithImpl<$Res, Products>;
  @useResult
  $Res call(
      {@JsonKey(name: "return") Return productsReturn,
      @JsonKey(name: "categories") List<Category> categories,
      @JsonKey(name: "new_products") List<SingleProduct> newProducts});

  $ReturnCopyWith<$Res> get productsReturn;
}

/// @nodoc
class _$ProductsCopyWithImpl<$Res, $Val extends Products>
    implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsReturn = null,
    Object? categories = null,
    Object? newProducts = null,
  }) {
    return _then(_value.copyWith(
      productsReturn: null == productsReturn
          ? _value.productsReturn
          : productsReturn // ignore: cast_nullable_to_non_nullable
              as Return,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      newProducts: null == newProducts
          ? _value.newProducts
          : newProducts // ignore: cast_nullable_to_non_nullable
              as List<SingleProduct>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReturnCopyWith<$Res> get productsReturn {
    return $ReturnCopyWith<$Res>(_value.productsReturn, (value) {
      return _then(_value.copyWith(productsReturn: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsImplCopyWith<$Res>
    implements $ProductsCopyWith<$Res> {
  factory _$$ProductsImplCopyWith(
          _$ProductsImpl value, $Res Function(_$ProductsImpl) then) =
      __$$ProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "return") Return productsReturn,
      @JsonKey(name: "categories") List<Category> categories,
      @JsonKey(name: "new_products") List<SingleProduct> newProducts});

  @override
  $ReturnCopyWith<$Res> get productsReturn;
}

/// @nodoc
class __$$ProductsImplCopyWithImpl<$Res>
    extends _$ProductsCopyWithImpl<$Res, _$ProductsImpl>
    implements _$$ProductsImplCopyWith<$Res> {
  __$$ProductsImplCopyWithImpl(
      _$ProductsImpl _value, $Res Function(_$ProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsReturn = null,
    Object? categories = null,
    Object? newProducts = null,
  }) {
    return _then(_$ProductsImpl(
      productsReturn: null == productsReturn
          ? _value.productsReturn
          : productsReturn // ignore: cast_nullable_to_non_nullable
              as Return,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      newProducts: null == newProducts
          ? _value._newProducts
          : newProducts // ignore: cast_nullable_to_non_nullable
              as List<SingleProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsImpl implements _Products {
  const _$ProductsImpl(
      {@JsonKey(name: "return") required this.productsReturn,
      @JsonKey(name: "categories") required final List<Category> categories,
      @JsonKey(name: "new_products")
      required final List<SingleProduct> newProducts})
      : _categories = categories,
        _newProducts = newProducts;

  factory _$ProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsImplFromJson(json);

  @override
  @JsonKey(name: "return")
  final Return productsReturn;
  final List<Category> _categories;
  @override
  @JsonKey(name: "categories")
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<SingleProduct> _newProducts;
  @override
  @JsonKey(name: "new_products")
  List<SingleProduct> get newProducts {
    if (_newProducts is EqualUnmodifiableListView) return _newProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newProducts);
  }

  @override
  String toString() {
    return 'Products(productsReturn: $productsReturn, categories: $categories, newProducts: $newProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsImpl &&
            (identical(other.productsReturn, productsReturn) ||
                other.productsReturn == productsReturn) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._newProducts, _newProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productsReturn,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_newProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsImplCopyWith<_$ProductsImpl> get copyWith =>
      __$$ProductsImplCopyWithImpl<_$ProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsImplToJson(
      this,
    );
  }
}

abstract class _Products implements Products {
  const factory _Products(
      {@JsonKey(name: "return") required final Return productsReturn,
      @JsonKey(name: "categories") required final List<Category> categories,
      @JsonKey(name: "new_products")
      required final List<SingleProduct> newProducts}) = _$ProductsImpl;

  factory _Products.fromJson(Map<String, dynamic> json) =
      _$ProductsImpl.fromJson;

  @override
  @JsonKey(name: "return")
  Return get productsReturn;
  @override
  @JsonKey(name: "categories")
  List<Category> get categories;
  @override
  @JsonKey(name: "new_products")
  List<SingleProduct> get newProducts;
  @override
  @JsonKey(ignore: true)
  _$$ProductsImplCopyWith<_$ProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  @JsonKey(name: "slug")
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_id")
  int get parentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {@JsonKey(name: "slug") String slug,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "parent_id") int parentId});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? image = null,
    Object? name = null,
    Object? parentId = null,
  }) {
    return _then(_value.copyWith(
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "slug") String slug,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "parent_id") int parentId});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? image = null,
    Object? name = null,
    Object? parentId = null,
  }) {
    return _then(_$CategoryImpl(
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {@JsonKey(name: "slug") required this.slug,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "parent_id") required this.parentId});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  @JsonKey(name: "slug")
  final String slug;
  @override
  @JsonKey(name: "image")
  final String image;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "parent_id")
  final int parentId;

  @override
  String toString() {
    return 'Category(slug: $slug, image: $image, name: $name, parentId: $parentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slug, image, name, parentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
          {@JsonKey(name: "slug") required final String slug,
          @JsonKey(name: "image") required final String image,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "parent_id") required final int parentId}) =
      _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  @JsonKey(name: "slug")
  String get slug;
  @override
  @JsonKey(name: "image")
  String get image;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "parent_id")
  int get parentId;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SingleProduct _$SingleProductFromJson(Map<String, dynamic> json) {
  return _SingleProduct.fromJson(json);
}

/// @nodoc
mixin _$SingleProduct {
  @JsonKey(name: "slug")
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "storeslug")
  String get storeslug => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_reward")
  String get purchaseReward => throw _privateConstructorUsedError;
  @JsonKey(name: "reward_point")
  String get rewardPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "app_description")
  String get appDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "stock")
  String get stock => throw _privateConstructorUsedError;
  @JsonKey(name: "symbol_left")
  String get symbolLeft => throw _privateConstructorUsedError;
  @JsonKey(name: "symbol_right")
  String get symbolRight => throw _privateConstructorUsedError;
  @JsonKey(name: "oldprice")
  String get oldprice => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  String get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  String get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "wishlist")
  int get wishlist => throw _privateConstructorUsedError;
  @JsonKey(name: "cart")
  int get cart => throw _privateConstructorUsedError;
  @JsonKey(name: "store")
  String get store => throw _privateConstructorUsedError;
  @JsonKey(name: "manufacturer")
  String get manufacturer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleProductCopyWith<SingleProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleProductCopyWith<$Res> {
  factory $SingleProductCopyWith(
          SingleProduct value, $Res Function(SingleProduct) then) =
      _$SingleProductCopyWithImpl<$Res, SingleProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "slug") String slug,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "storeslug") String storeslug,
      @JsonKey(name: "purchase_reward") String purchaseReward,
      @JsonKey(name: "reward_point") String rewardPoint,
      @JsonKey(name: "code") String code,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "app_description") String appDescription,
      @JsonKey(name: "stock") String stock,
      @JsonKey(name: "symbol_left") String symbolLeft,
      @JsonKey(name: "symbol_right") String symbolRight,
      @JsonKey(name: "oldprice") String oldprice,
      @JsonKey(name: "price") String price,
      @JsonKey(name: "discount") String discount,
      @JsonKey(name: "rating") String rating,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "wishlist") int wishlist,
      @JsonKey(name: "cart") int cart,
      @JsonKey(name: "store") String store,
      @JsonKey(name: "manufacturer") String manufacturer});
}

/// @nodoc
class _$SingleProductCopyWithImpl<$Res, $Val extends SingleProduct>
    implements $SingleProductCopyWith<$Res> {
  _$SingleProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? status = null,
    Object? storeslug = null,
    Object? purchaseReward = null,
    Object? rewardPoint = null,
    Object? code = null,
    Object? name = null,
    Object? appDescription = null,
    Object? stock = null,
    Object? symbolLeft = null,
    Object? symbolRight = null,
    Object? oldprice = null,
    Object? price = null,
    Object? discount = null,
    Object? rating = null,
    Object? image = null,
    Object? wishlist = null,
    Object? cart = null,
    Object? store = null,
    Object? manufacturer = null,
  }) {
    return _then(_value.copyWith(
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      storeslug: null == storeslug
          ? _value.storeslug
          : storeslug // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseReward: null == purchaseReward
          ? _value.purchaseReward
          : purchaseReward // ignore: cast_nullable_to_non_nullable
              as String,
      rewardPoint: null == rewardPoint
          ? _value.rewardPoint
          : rewardPoint // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      appDescription: null == appDescription
          ? _value.appDescription
          : appDescription // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String,
      symbolLeft: null == symbolLeft
          ? _value.symbolLeft
          : symbolLeft // ignore: cast_nullable_to_non_nullable
              as String,
      symbolRight: null == symbolRight
          ? _value.symbolRight
          : symbolRight // ignore: cast_nullable_to_non_nullable
              as String,
      oldprice: null == oldprice
          ? _value.oldprice
          : oldprice // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      wishlist: null == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as int,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as int,
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleProductImplCopyWith<$Res>
    implements $SingleProductCopyWith<$Res> {
  factory _$$SingleProductImplCopyWith(
          _$SingleProductImpl value, $Res Function(_$SingleProductImpl) then) =
      __$$SingleProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "slug") String slug,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "storeslug") String storeslug,
      @JsonKey(name: "purchase_reward") String purchaseReward,
      @JsonKey(name: "reward_point") String rewardPoint,
      @JsonKey(name: "code") String code,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "app_description") String appDescription,
      @JsonKey(name: "stock") String stock,
      @JsonKey(name: "symbol_left") String symbolLeft,
      @JsonKey(name: "symbol_right") String symbolRight,
      @JsonKey(name: "oldprice") String oldprice,
      @JsonKey(name: "price") String price,
      @JsonKey(name: "discount") String discount,
      @JsonKey(name: "rating") String rating,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "wishlist") int wishlist,
      @JsonKey(name: "cart") int cart,
      @JsonKey(name: "store") String store,
      @JsonKey(name: "manufacturer") String manufacturer});
}

/// @nodoc
class __$$SingleProductImplCopyWithImpl<$Res>
    extends _$SingleProductCopyWithImpl<$Res, _$SingleProductImpl>
    implements _$$SingleProductImplCopyWith<$Res> {
  __$$SingleProductImplCopyWithImpl(
      _$SingleProductImpl _value, $Res Function(_$SingleProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? status = null,
    Object? storeslug = null,
    Object? purchaseReward = null,
    Object? rewardPoint = null,
    Object? code = null,
    Object? name = null,
    Object? appDescription = null,
    Object? stock = null,
    Object? symbolLeft = null,
    Object? symbolRight = null,
    Object? oldprice = null,
    Object? price = null,
    Object? discount = null,
    Object? rating = null,
    Object? image = null,
    Object? wishlist = null,
    Object? cart = null,
    Object? store = null,
    Object? manufacturer = null,
  }) {
    return _then(_$SingleProductImpl(
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      storeslug: null == storeslug
          ? _value.storeslug
          : storeslug // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseReward: null == purchaseReward
          ? _value.purchaseReward
          : purchaseReward // ignore: cast_nullable_to_non_nullable
              as String,
      rewardPoint: null == rewardPoint
          ? _value.rewardPoint
          : rewardPoint // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      appDescription: null == appDescription
          ? _value.appDescription
          : appDescription // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String,
      symbolLeft: null == symbolLeft
          ? _value.symbolLeft
          : symbolLeft // ignore: cast_nullable_to_non_nullable
              as String,
      symbolRight: null == symbolRight
          ? _value.symbolRight
          : symbolRight // ignore: cast_nullable_to_non_nullable
              as String,
      oldprice: null == oldprice
          ? _value.oldprice
          : oldprice // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      wishlist: null == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as int,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as int,
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleProductImpl implements _SingleProduct {
  const _$SingleProductImpl(
      {@JsonKey(name: "slug") required this.slug,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "storeslug") required this.storeslug,
      @JsonKey(name: "purchase_reward") required this.purchaseReward,
      @JsonKey(name: "reward_point") required this.rewardPoint,
      @JsonKey(name: "code") required this.code,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "app_description") required this.appDescription,
      @JsonKey(name: "stock") required this.stock,
      @JsonKey(name: "symbol_left") required this.symbolLeft,
      @JsonKey(name: "symbol_right") required this.symbolRight,
      @JsonKey(name: "oldprice") required this.oldprice,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "discount") required this.discount,
      @JsonKey(name: "rating") required this.rating,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "wishlist") required this.wishlist,
      @JsonKey(name: "cart") required this.cart,
      @JsonKey(name: "store") required this.store,
      @JsonKey(name: "manufacturer") required this.manufacturer});

  factory _$SingleProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleProductImplFromJson(json);

  @override
  @JsonKey(name: "slug")
  final String slug;
  @override
  @JsonKey(name: "status")
  final int status;
  @override
  @JsonKey(name: "storeslug")
  final String storeslug;
  @override
  @JsonKey(name: "purchase_reward")
  final String purchaseReward;
  @override
  @JsonKey(name: "reward_point")
  final String rewardPoint;
  @override
  @JsonKey(name: "code")
  final String code;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "app_description")
  final String appDescription;
  @override
  @JsonKey(name: "stock")
  final String stock;
  @override
  @JsonKey(name: "symbol_left")
  final String symbolLeft;
  @override
  @JsonKey(name: "symbol_right")
  final String symbolRight;
  @override
  @JsonKey(name: "oldprice")
  final String oldprice;
  @override
  @JsonKey(name: "price")
  final String price;
  @override
  @JsonKey(name: "discount")
  final String discount;
  @override
  @JsonKey(name: "rating")
  final String rating;
  @override
  @JsonKey(name: "image")
  final String image;
  @override
  @JsonKey(name: "wishlist")
  final int wishlist;
  @override
  @JsonKey(name: "cart")
  final int cart;
  @override
  @JsonKey(name: "store")
  final String store;
  @override
  @JsonKey(name: "manufacturer")
  final String manufacturer;

  @override
  String toString() {
    return 'SingleProduct(slug: $slug, status: $status, storeslug: $storeslug, purchaseReward: $purchaseReward, rewardPoint: $rewardPoint, code: $code, name: $name, appDescription: $appDescription, stock: $stock, symbolLeft: $symbolLeft, symbolRight: $symbolRight, oldprice: $oldprice, price: $price, discount: $discount, rating: $rating, image: $image, wishlist: $wishlist, cart: $cart, store: $store, manufacturer: $manufacturer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleProductImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.storeslug, storeslug) ||
                other.storeslug == storeslug) &&
            (identical(other.purchaseReward, purchaseReward) ||
                other.purchaseReward == purchaseReward) &&
            (identical(other.rewardPoint, rewardPoint) ||
                other.rewardPoint == rewardPoint) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.appDescription, appDescription) ||
                other.appDescription == appDescription) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.symbolLeft, symbolLeft) ||
                other.symbolLeft == symbolLeft) &&
            (identical(other.symbolRight, symbolRight) ||
                other.symbolRight == symbolRight) &&
            (identical(other.oldprice, oldprice) ||
                other.oldprice == oldprice) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.wishlist, wishlist) ||
                other.wishlist == wishlist) &&
            (identical(other.cart, cart) || other.cart == cart) &&
            (identical(other.store, store) || other.store == store) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        slug,
        status,
        storeslug,
        purchaseReward,
        rewardPoint,
        code,
        name,
        appDescription,
        stock,
        symbolLeft,
        symbolRight,
        oldprice,
        price,
        discount,
        rating,
        image,
        wishlist,
        cart,
        store,
        manufacturer
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleProductImplCopyWith<_$SingleProductImpl> get copyWith =>
      __$$SingleProductImplCopyWithImpl<_$SingleProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleProductImplToJson(
      this,
    );
  }
}

abstract class _SingleProduct implements SingleProduct {
  const factory _SingleProduct(
      {@JsonKey(name: "slug") required final String slug,
      @JsonKey(name: "status") required final int status,
      @JsonKey(name: "storeslug") required final String storeslug,
      @JsonKey(name: "purchase_reward") required final String purchaseReward,
      @JsonKey(name: "reward_point") required final String rewardPoint,
      @JsonKey(name: "code") required final String code,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "app_description") required final String appDescription,
      @JsonKey(name: "stock") required final String stock,
      @JsonKey(name: "symbol_left") required final String symbolLeft,
      @JsonKey(name: "symbol_right") required final String symbolRight,
      @JsonKey(name: "oldprice") required final String oldprice,
      @JsonKey(name: "price") required final String price,
      @JsonKey(name: "discount") required final String discount,
      @JsonKey(name: "rating") required final String rating,
      @JsonKey(name: "image") required final String image,
      @JsonKey(name: "wishlist") required final int wishlist,
      @JsonKey(name: "cart") required final int cart,
      @JsonKey(name: "store") required final String store,
      @JsonKey(name: "manufacturer")
      required final String manufacturer}) = _$SingleProductImpl;

  factory _SingleProduct.fromJson(Map<String, dynamic> json) =
      _$SingleProductImpl.fromJson;

  @override
  @JsonKey(name: "slug")
  String get slug;
  @override
  @JsonKey(name: "status")
  int get status;
  @override
  @JsonKey(name: "storeslug")
  String get storeslug;
  @override
  @JsonKey(name: "purchase_reward")
  String get purchaseReward;
  @override
  @JsonKey(name: "reward_point")
  String get rewardPoint;
  @override
  @JsonKey(name: "code")
  String get code;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "app_description")
  String get appDescription;
  @override
  @JsonKey(name: "stock")
  String get stock;
  @override
  @JsonKey(name: "symbol_left")
  String get symbolLeft;
  @override
  @JsonKey(name: "symbol_right")
  String get symbolRight;
  @override
  @JsonKey(name: "oldprice")
  String get oldprice;
  @override
  @JsonKey(name: "price")
  String get price;
  @override
  @JsonKey(name: "discount")
  String get discount;
  @override
  @JsonKey(name: "rating")
  String get rating;
  @override
  @JsonKey(name: "image")
  String get image;
  @override
  @JsonKey(name: "wishlist")
  int get wishlist;
  @override
  @JsonKey(name: "cart")
  int get cart;
  @override
  @JsonKey(name: "store")
  String get store;
  @override
  @JsonKey(name: "manufacturer")
  String get manufacturer;
  @override
  @JsonKey(ignore: true)
  _$$SingleProductImplCopyWith<_$SingleProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Return _$ReturnFromJson(Map<String, dynamic> json) {
  return _Return.fromJson(json);
}

/// @nodoc
mixin _$Return {
  @JsonKey(name: "current_page")
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<SingleProduct> get data => throw _privateConstructorUsedError;
  @JsonKey(name: "first_page_url")
  String get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "from")
  int get from => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page_url")
  String get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "links")
  List<Link> get links => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  dynamic get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  int get to => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReturnCopyWith<Return> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnCopyWith<$Res> {
  factory $ReturnCopyWith(Return value, $Res Function(Return) then) =
      _$ReturnCopyWithImpl<$Res, Return>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int currentPage,
      @JsonKey(name: "data") List<SingleProduct> data,
      @JsonKey(name: "first_page_url") String firstPageUrl,
      @JsonKey(name: "from") int from,
      @JsonKey(name: "last_page") int lastPage,
      @JsonKey(name: "last_page_url") String lastPageUrl,
      @JsonKey(name: "links") List<Link> links,
      @JsonKey(name: "next_page_url") dynamic nextPageUrl,
      @JsonKey(name: "path") String path,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "to") int to,
      @JsonKey(name: "total") int total});
}

/// @nodoc
class _$ReturnCopyWithImpl<$Res, $Val extends Return>
    implements $ReturnCopyWith<$Res> {
  _$ReturnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
    Object? firstPageUrl = null,
    Object? from = null,
    Object? lastPage = null,
    Object? lastPageUrl = null,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = null,
    Object? perPage = null,
    Object? prevPageUrl = freezed,
    Object? to = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SingleProduct>,
      firstPageUrl: null == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageUrl: null == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReturnImplCopyWith<$Res> implements $ReturnCopyWith<$Res> {
  factory _$$ReturnImplCopyWith(
          _$ReturnImpl value, $Res Function(_$ReturnImpl) then) =
      __$$ReturnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int currentPage,
      @JsonKey(name: "data") List<SingleProduct> data,
      @JsonKey(name: "first_page_url") String firstPageUrl,
      @JsonKey(name: "from") int from,
      @JsonKey(name: "last_page") int lastPage,
      @JsonKey(name: "last_page_url") String lastPageUrl,
      @JsonKey(name: "links") List<Link> links,
      @JsonKey(name: "next_page_url") dynamic nextPageUrl,
      @JsonKey(name: "path") String path,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "to") int to,
      @JsonKey(name: "total") int total});
}

/// @nodoc
class __$$ReturnImplCopyWithImpl<$Res>
    extends _$ReturnCopyWithImpl<$Res, _$ReturnImpl>
    implements _$$ReturnImplCopyWith<$Res> {
  __$$ReturnImplCopyWithImpl(
      _$ReturnImpl _value, $Res Function(_$ReturnImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
    Object? firstPageUrl = null,
    Object? from = null,
    Object? lastPage = null,
    Object? lastPageUrl = null,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = null,
    Object? perPage = null,
    Object? prevPageUrl = freezed,
    Object? to = null,
    Object? total = null,
  }) {
    return _then(_$ReturnImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SingleProduct>,
      firstPageUrl: null == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageUrl: null == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReturnImpl implements _Return {
  const _$ReturnImpl(
      {@JsonKey(name: "current_page") required this.currentPage,
      @JsonKey(name: "data") required final List<SingleProduct> data,
      @JsonKey(name: "first_page_url") required this.firstPageUrl,
      @JsonKey(name: "from") required this.from,
      @JsonKey(name: "last_page") required this.lastPage,
      @JsonKey(name: "last_page_url") required this.lastPageUrl,
      @JsonKey(name: "links") required final List<Link> links,
      @JsonKey(name: "next_page_url") required this.nextPageUrl,
      @JsonKey(name: "path") required this.path,
      @JsonKey(name: "per_page") required this.perPage,
      @JsonKey(name: "prev_page_url") required this.prevPageUrl,
      @JsonKey(name: "to") required this.to,
      @JsonKey(name: "total") required this.total})
      : _data = data,
        _links = links;

  factory _$ReturnImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReturnImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int currentPage;
  final List<SingleProduct> _data;
  @override
  @JsonKey(name: "data")
  List<SingleProduct> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: "first_page_url")
  final String firstPageUrl;
  @override
  @JsonKey(name: "from")
  final int from;
  @override
  @JsonKey(name: "last_page")
  final int lastPage;
  @override
  @JsonKey(name: "last_page_url")
  final String lastPageUrl;
  final List<Link> _links;
  @override
  @JsonKey(name: "links")
  List<Link> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  @JsonKey(name: "next_page_url")
  final dynamic nextPageUrl;
  @override
  @JsonKey(name: "path")
  final String path;
  @override
  @JsonKey(name: "per_page")
  final int perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final dynamic prevPageUrl;
  @override
  @JsonKey(name: "to")
  final int to;
  @override
  @JsonKey(name: "total")
  final int total;

  @override
  String toString() {
    return 'Return(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            const DeepCollectionEquality()
                .equals(other.nextPageUrl, nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            const DeepCollectionEquality()
                .equals(other.prevPageUrl, prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      const DeepCollectionEquality().hash(nextPageUrl),
      path,
      perPage,
      const DeepCollectionEquality().hash(prevPageUrl),
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnImplCopyWith<_$ReturnImpl> get copyWith =>
      __$$ReturnImplCopyWithImpl<_$ReturnImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReturnImplToJson(
      this,
    );
  }
}

abstract class _Return implements Return {
  const factory _Return(
      {@JsonKey(name: "current_page") required final int currentPage,
      @JsonKey(name: "data") required final List<SingleProduct> data,
      @JsonKey(name: "first_page_url") required final String firstPageUrl,
      @JsonKey(name: "from") required final int from,
      @JsonKey(name: "last_page") required final int lastPage,
      @JsonKey(name: "last_page_url") required final String lastPageUrl,
      @JsonKey(name: "links") required final List<Link> links,
      @JsonKey(name: "next_page_url") required final dynamic nextPageUrl,
      @JsonKey(name: "path") required final String path,
      @JsonKey(name: "per_page") required final int perPage,
      @JsonKey(name: "prev_page_url") required final dynamic prevPageUrl,
      @JsonKey(name: "to") required final int to,
      @JsonKey(name: "total") required final int total}) = _$ReturnImpl;

  factory _Return.fromJson(Map<String, dynamic> json) = _$ReturnImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int get currentPage;
  @override
  @JsonKey(name: "data")
  List<SingleProduct> get data;
  @override
  @JsonKey(name: "first_page_url")
  String get firstPageUrl;
  @override
  @JsonKey(name: "from")
  int get from;
  @override
  @JsonKey(name: "last_page")
  int get lastPage;
  @override
  @JsonKey(name: "last_page_url")
  String get lastPageUrl;
  @override
  @JsonKey(name: "links")
  List<Link> get links;
  @override
  @JsonKey(name: "next_page_url")
  dynamic get nextPageUrl;
  @override
  @JsonKey(name: "path")
  String get path;
  @override
  @JsonKey(name: "per_page")
  int get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl;
  @override
  @JsonKey(name: "to")
  int get to;
  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$ReturnImplCopyWith<_$ReturnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "label")
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: "active")
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call(
      {@JsonKey(name: "url") String? url,
      @JsonKey(name: "label") String label,
      @JsonKey(name: "active") bool active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkImplCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$LinkImplCopyWith(
          _$LinkImpl value, $Res Function(_$LinkImpl) then) =
      __$$LinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "url") String? url,
      @JsonKey(name: "label") String label,
      @JsonKey(name: "active") bool active});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_$LinkImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkImpl implements _Link {
  const _$LinkImpl(
      {@JsonKey(name: "url") required this.url,
      @JsonKey(name: "label") required this.label,
      @JsonKey(name: "active") required this.active});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "label")
  final String label;
  @override
  @JsonKey(name: "active")
  final bool active;

  @override
  String toString() {
    return 'Link(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      __$$LinkImplCopyWithImpl<_$LinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkImplToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {@JsonKey(name: "url") required final String? url,
      @JsonKey(name: "label") required final String label,
      @JsonKey(name: "active") required final bool active}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "label")
  String get label;
  @override
  @JsonKey(name: "active")
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
