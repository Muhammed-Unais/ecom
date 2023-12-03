// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  @JsonKey(name: "success")
  int get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "banner1")
  List<Banner1> get banner1 => throw _privateConstructorUsedError;
  @JsonKey(name: "best_seller")
  List<dynamic> get bestSeller => throw _privateConstructorUsedError;
  @JsonKey(name: "categories")
  List<CategoryElement> get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") int success,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "banner1") List<Banner1> banner1,
      @JsonKey(name: "best_seller") List<dynamic> bestSeller,
      @JsonKey(name: "categories") List<CategoryElement> categories});
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? banner1 = null,
    Object? bestSeller = null,
    Object? categories = null,
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
      banner1: null == banner1
          ? _value.banner1
          : banner1 // ignore: cast_nullable_to_non_nullable
              as List<Banner1>,
      bestSeller: null == bestSeller
          ? _value.bestSeller
          : bestSeller // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryElement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
          _$HomeModelImpl value, $Res Function(_$HomeModelImpl) then) =
      __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") int success,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "banner1") List<Banner1> banner1,
      @JsonKey(name: "best_seller") List<dynamic> bestSeller,
      @JsonKey(name: "categories") List<CategoryElement> categories});
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
      _$HomeModelImpl _value, $Res Function(_$HomeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? banner1 = null,
    Object? bestSeller = null,
    Object? categories = null,
  }) {
    return _then(_$HomeModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      banner1: null == banner1
          ? _value._banner1
          : banner1 // ignore: cast_nullable_to_non_nullable
              as List<Banner1>,
      bestSeller: null == bestSeller
          ? _value._bestSeller
          : bestSeller // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryElement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelImpl implements _HomeModel {
  const _$HomeModelImpl(
      {@JsonKey(name: "success") required this.success,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "banner1") required final List<Banner1> banner1,
      @JsonKey(name: "best_seller") required final List<dynamic> bestSeller,
      @JsonKey(name: "categories")
      required final List<CategoryElement> categories})
      : _banner1 = banner1,
        _bestSeller = bestSeller,
        _categories = categories;

  factory _$HomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final int success;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<Banner1> _banner1;
  @override
  @JsonKey(name: "banner1")
  List<Banner1> get banner1 {
    if (_banner1 is EqualUnmodifiableListView) return _banner1;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banner1);
  }

  final List<dynamic> _bestSeller;
  @override
  @JsonKey(name: "best_seller")
  List<dynamic> get bestSeller {
    if (_bestSeller is EqualUnmodifiableListView) return _bestSeller;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestSeller);
  }

  final List<CategoryElement> _categories;
  @override
  @JsonKey(name: "categories")
  List<CategoryElement> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'HomeModel(success: $success, message: $message, banner1: $banner1, bestSeller: $bestSeller, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._banner1, _banner1) &&
            const DeepCollectionEquality()
                .equals(other._bestSeller, _bestSeller) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      message,
      const DeepCollectionEquality().hash(_banner1),
      const DeepCollectionEquality().hash(_bestSeller),
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {@JsonKey(name: "success") required final int success,
      @JsonKey(name: "message") required final String message,
      @JsonKey(name: "banner1") required final List<Banner1> banner1,
      @JsonKey(name: "best_seller") required final List<dynamic> bestSeller,
      @JsonKey(name: "categories")
      required final List<CategoryElement> categories}) = _$HomeModelImpl;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$HomeModelImpl.fromJson;

  @override
  @JsonKey(name: "success")
  int get success;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "banner1")
  List<Banner1> get banner1;
  @override
  @JsonKey(name: "best_seller")
  List<dynamic> get bestSeller;
  @override
  @JsonKey(name: "categories")
  List<CategoryElement> get categories;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Banner1 _$Banner1FromJson(Map<String, dynamic> json) {
  return _Banner1.fromJson(json);
}

/// @nodoc
mixin _$Banner1 {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "link_type")
  int get linkType => throw _privateConstructorUsedError;
  @JsonKey(name: "link_value")
  String get linkValue => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_title")
  String get subTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "logo")
  dynamic get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Banner1CopyWith<Banner1> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Banner1CopyWith<$Res> {
  factory $Banner1CopyWith(Banner1 value, $Res Function(Banner1) then) =
      _$Banner1CopyWithImpl<$Res, Banner1>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "link_type") int linkType,
      @JsonKey(name: "link_value") String linkValue,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "sub_title") String subTitle,
      @JsonKey(name: "logo") dynamic logo});
}

/// @nodoc
class _$Banner1CopyWithImpl<$Res, $Val extends Banner1>
    implements $Banner1CopyWith<$Res> {
  _$Banner1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? linkType = null,
    Object? linkValue = null,
    Object? image = null,
    Object? title = null,
    Object? subTitle = null,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      linkType: null == linkType
          ? _value.linkType
          : linkType // ignore: cast_nullable_to_non_nullable
              as int,
      linkValue: null == linkValue
          ? _value.linkValue
          : linkValue // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Banner1ImplCopyWith<$Res> implements $Banner1CopyWith<$Res> {
  factory _$$Banner1ImplCopyWith(
          _$Banner1Impl value, $Res Function(_$Banner1Impl) then) =
      __$$Banner1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "link_type") int linkType,
      @JsonKey(name: "link_value") String linkValue,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "sub_title") String subTitle,
      @JsonKey(name: "logo") dynamic logo});
}

/// @nodoc
class __$$Banner1ImplCopyWithImpl<$Res>
    extends _$Banner1CopyWithImpl<$Res, _$Banner1Impl>
    implements _$$Banner1ImplCopyWith<$Res> {
  __$$Banner1ImplCopyWithImpl(
      _$Banner1Impl _value, $Res Function(_$Banner1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? linkType = null,
    Object? linkValue = null,
    Object? image = null,
    Object? title = null,
    Object? subTitle = null,
    Object? logo = freezed,
  }) {
    return _then(_$Banner1Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      linkType: null == linkType
          ? _value.linkType
          : linkType // ignore: cast_nullable_to_non_nullable
              as int,
      linkValue: null == linkValue
          ? _value.linkValue
          : linkValue // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Banner1Impl implements _Banner1 {
  const _$Banner1Impl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "link_type") required this.linkType,
      @JsonKey(name: "link_value") required this.linkValue,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "sub_title") required this.subTitle,
      @JsonKey(name: "logo") required this.logo});

  factory _$Banner1Impl.fromJson(Map<String, dynamic> json) =>
      _$$Banner1ImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "link_type")
  final int linkType;
  @override
  @JsonKey(name: "link_value")
  final String linkValue;
  @override
  @JsonKey(name: "image")
  final String image;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "sub_title")
  final String subTitle;
  @override
  @JsonKey(name: "logo")
  final dynamic logo;

  @override
  String toString() {
    return 'Banner1(id: $id, linkType: $linkType, linkValue: $linkValue, image: $image, title: $title, subTitle: $subTitle, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Banner1Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.linkType, linkType) ||
                other.linkType == linkType) &&
            (identical(other.linkValue, linkValue) ||
                other.linkValue == linkValue) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            const DeepCollectionEquality().equals(other.logo, logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, linkType, linkValue, image,
      title, subTitle, const DeepCollectionEquality().hash(logo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Banner1ImplCopyWith<_$Banner1Impl> get copyWith =>
      __$$Banner1ImplCopyWithImpl<_$Banner1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Banner1ImplToJson(
      this,
    );
  }
}

abstract class _Banner1 implements Banner1 {
  const factory _Banner1(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "link_type") required final int linkType,
      @JsonKey(name: "link_value") required final String linkValue,
      @JsonKey(name: "image") required final String image,
      @JsonKey(name: "title") required final String title,
      @JsonKey(name: "sub_title") required final String subTitle,
      @JsonKey(name: "logo") required final dynamic logo}) = _$Banner1Impl;

  factory _Banner1.fromJson(Map<String, dynamic> json) = _$Banner1Impl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "link_type")
  int get linkType;
  @override
  @JsonKey(name: "link_value")
  String get linkValue;
  @override
  @JsonKey(name: "image")
  String get image;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "sub_title")
  String get subTitle;
  @override
  @JsonKey(name: "logo")
  dynamic get logo;
  @override
  @JsonKey(ignore: true)
  _$$Banner1ImplCopyWith<_$Banner1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryElement _$CategoryElementFromJson(Map<String, dynamic> json) {
  return _CategoryElement.fromJson(json);
}

/// @nodoc
mixin _$CategoryElement {
  @JsonKey(name: "category")
  CategoryCategory get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryElementCopyWith<CategoryElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryElementCopyWith<$Res> {
  factory $CategoryElementCopyWith(
          CategoryElement value, $Res Function(CategoryElement) then) =
      _$CategoryElementCopyWithImpl<$Res, CategoryElement>;
  @useResult
  $Res call({@JsonKey(name: "category") CategoryCategory category});

  $CategoryCategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$CategoryElementCopyWithImpl<$Res, $Val extends CategoryElement>
    implements $CategoryElementCopyWith<$Res> {
  _$CategoryElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryCategory,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCategoryCopyWith<$Res> get category {
    return $CategoryCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryElementImplCopyWith<$Res>
    implements $CategoryElementCopyWith<$Res> {
  factory _$$CategoryElementImplCopyWith(_$CategoryElementImpl value,
          $Res Function(_$CategoryElementImpl) then) =
      __$$CategoryElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "category") CategoryCategory category});

  @override
  $CategoryCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$CategoryElementImplCopyWithImpl<$Res>
    extends _$CategoryElementCopyWithImpl<$Res, _$CategoryElementImpl>
    implements _$$CategoryElementImplCopyWith<$Res> {
  __$$CategoryElementImplCopyWithImpl(
      _$CategoryElementImpl _value, $Res Function(_$CategoryElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$CategoryElementImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryElementImpl implements _CategoryElement {
  const _$CategoryElementImpl(
      {@JsonKey(name: "category") required this.category});

  factory _$CategoryElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryElementImplFromJson(json);

  @override
  @JsonKey(name: "category")
  final CategoryCategory category;

  @override
  String toString() {
    return 'CategoryElement(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryElementImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryElementImplCopyWith<_$CategoryElementImpl> get copyWith =>
      __$$CategoryElementImplCopyWithImpl<_$CategoryElementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryElementImplToJson(
      this,
    );
  }
}

abstract class _CategoryElement implements CategoryElement {
  const factory _CategoryElement(
      {@JsonKey(name: "category")
      required final CategoryCategory category}) = _$CategoryElementImpl;

  factory _CategoryElement.fromJson(Map<String, dynamic> json) =
      _$CategoryElementImpl.fromJson;

  @override
  @JsonKey(name: "category")
  CategoryCategory get category;
  @override
  @JsonKey(ignore: true)
  _$$CategoryElementImplCopyWith<_$CategoryElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryCategory _$CategoryCategoryFromJson(Map<String, dynamic> json) {
  return _CategoryCategory.fromJson(json);
}

/// @nodoc
mixin _$CategoryCategory {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCategoryCopyWith<CategoryCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCategoryCopyWith<$Res> {
  factory $CategoryCategoryCopyWith(
          CategoryCategory value, $Res Function(CategoryCategory) then) =
      _$CategoryCategoryCopyWithImpl<$Res, CategoryCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "slug") String slug,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class _$CategoryCategoryCopyWithImpl<$Res, $Val extends CategoryCategory>
    implements $CategoryCategoryCopyWith<$Res> {
  _$CategoryCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? image = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryCategoryImplCopyWith<$Res>
    implements $CategoryCategoryCopyWith<$Res> {
  factory _$$CategoryCategoryImplCopyWith(_$CategoryCategoryImpl value,
          $Res Function(_$CategoryCategoryImpl) then) =
      __$$CategoryCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "slug") String slug,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class __$$CategoryCategoryImplCopyWithImpl<$Res>
    extends _$CategoryCategoryCopyWithImpl<$Res, _$CategoryCategoryImpl>
    implements _$$CategoryCategoryImplCopyWith<$Res> {
  __$$CategoryCategoryImplCopyWithImpl(_$CategoryCategoryImpl _value,
      $Res Function(_$CategoryCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? image = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$CategoryCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryCategoryImpl implements _CategoryCategory {
  const _$CategoryCategoryImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "slug") required this.slug,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "description") required this.description});

  factory _$CategoryCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryCategoryImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
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
  @JsonKey(name: "description")
  final String description;

  @override
  String toString() {
    return 'CategoryCategory(id: $id, slug: $slug, image: $image, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, slug, image, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryCategoryImplCopyWith<_$CategoryCategoryImpl> get copyWith =>
      __$$CategoryCategoryImplCopyWithImpl<_$CategoryCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryCategoryImplToJson(
      this,
    );
  }
}

abstract class _CategoryCategory implements CategoryCategory {
  const factory _CategoryCategory(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "slug") required final String slug,
          @JsonKey(name: "image") required final String image,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "description") required final String description}) =
      _$CategoryCategoryImpl;

  factory _CategoryCategory.fromJson(Map<String, dynamic> json) =
      _$CategoryCategoryImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
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
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$CategoryCategoryImplCopyWith<_$CategoryCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
