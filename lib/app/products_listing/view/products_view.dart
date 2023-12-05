import 'package:ecom/app/products_listing/view/widgets/products_loading_widget.dart';
import 'package:ecom/data/app_response/status.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:ecom/res/widgets/products_wishlist_icon.dart';
import 'package:ecom/app/products_listing/view/widgets/products_view_appbar.dart';
import 'package:ecom/app/products_listing/view_model/products_listing_view_model.dart';
import 'package:ecom/res/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key, required this.isInBottomBar});

  final bool isInBottomBar;

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  ScrollController scrollControler = ScrollController();

  late ProductsListingViewModel productsProvider;

  Future<void> getAlldata() async {
    await productsProvider.getAllProducts(page: 1);
  }

  @override
  void initState() {
    productsProvider = context.read<ProductsListingViewModel>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      productsProvider.productsApiResponse ?? getAlldata();
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    scrollControler.addListener(() {
      productsProvider.scrollMaxChecking(scrollControler);
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
      appBar: PrdouctsAppBar(
        isInBottomBar: widget.isInBottomBar,
        itemsCount: productsProvider.totalItem,
      ),
      body: Consumer<ProductsListingViewModel>(
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
                        child: CircularProgressIndicator(
                          color: AppColors.primarySeed,
                          strokeWidth: 2,
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
