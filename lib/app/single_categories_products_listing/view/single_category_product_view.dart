import 'dart:developer';
import 'package:ecom/app/products_listing/view/widgets/products_loading_widget.dart';
import 'package:ecom/app/single_categories_products_listing/view/widget/single_product_appbar.dart';
import 'package:ecom/app/single_categories_products_listing/view_model/single_category_product_listintg_view_model.dart';
import 'package:ecom/data/app_response/status.dart';
import 'package:ecom/res/widgets/products_wishlist_icon.dart';
import 'package:ecom/app/products_listing/view/widgets/products_view_appbar.dart';
import 'package:ecom/res/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SingleCategoryProductsView extends StatefulWidget {
  const SingleCategoryProductsView({
    super.key,
    required this.isInBottomBar,
    required this.categorySlug,
    required this.categoryName,
  });

  final bool isInBottomBar;
  final String categorySlug;
  final String categoryName;

  @override
  State<SingleCategoryProductsView> createState() =>
      _SingleCategoryProductsViewState();
}

class _SingleCategoryProductsViewState
    extends State<SingleCategoryProductsView> {
  ScrollController scrollControler = ScrollController();

  late SingleCategoryProductsListingViewModel productsProvider;

  Future<void> getAlldata() async {
    log(widget.categorySlug);
    await productsProvider.getAllProducts(
        page: 1, query: {"by": "category", "value": widget.categorySlug});
  }

  @override
  void initState() {
    productsProvider = context.read<SingleCategoryProductsListingViewModel>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      productsProvider.productsApiResponse ?? getAlldata();
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    scrollControler.addListener(() {
      productsProvider.scrollMaxChecking(scrollControler, {
        "by": "category",
        "value": widget.categorySlug,
      });
    });
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    scrollControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: SinglePrdouctsAppBar(
        categoryName: widget.categoryName,
        isInBottomBar: widget.isInBottomBar,
      ),
      body: Consumer<SingleCategoryProductsListingViewModel>(
        builder: (context, productProvider, _) {
          final response = productProvider.productsApiResponse;
          switch (response?.status) {
            case Status.loading:
              return ProductsLoadingWidget(size: size);
            case Status.error:
              return Center(
                child: Text(
                  "${response?.message}",
                  style: const TextStyle(color: Colors.black),
                ),
              );
            case Status.completed:
              return SingleChildScrollView(
                controller: scrollControler,
                child: Column(
                  children: [
                    GridView.builder(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 20),
                      shrinkWrap: true,
                      itemCount: productProvider.productList.length,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1 / 1.5,
                      ),
                      itemBuilder: (context, index) {
                        final product = productProvider.productList[index];
                        return ProductCard(
                          wishListIcon: ProductsWishListIcon(product: product),
                          productImage: product.image,
                          cardWidth: 0,
                          imagehight: size.height * 0.26,
                          imageWidth: size.width * 0.5,
                          productName: product.name,
                          productPrice: product.price.toString(),
                        );
                      },
                    ),
                    if (!productProvider.isLimit)
                      const Center(
                        child: SizedBox(
                          width: 24,
                          height: 24,
                          // child: CircularProgressIndicator(
                          //   color: AppColors.primarySeed,
                          //   strokeWidth: 4,
                          // ),
                        ),
                      )
                  ],
                ),
              );
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
