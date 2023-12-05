import 'package:ecom/res/widgets/products_wishlist_icon.dart';
import 'package:ecom/app/products_listing/model/products_model.dart';
import 'package:ecom/app/products_listing/view_model/products_listing_view_model.dart';
import 'package:ecom/res/widgets/product_card.dart';
import 'package:ecom/res/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.32,
      child: FutureBuilder<List<SingleProduct>>(
        future: context.read<ProductsListingViewModel>().getProductHome(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return ListView.builder(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
              shrinkWrap: true,
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: ShimerWidget.rectangular(
                    width: size.width * 0.4,
                    hight: size.height * 0.2,
                    verticalMargin: 10,
                    borderRadius: 6,
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return SizedBox(
              height: size.height * 0.3,
              width: size.width,
              child: const Center(
                child: Text(
                  "",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            );
          } else if (snapshot.data == null) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          }
          return ListView.builder(
            padding: const EdgeInsets.only(left: 16),
            itemCount: snapshot.data!.length < 4 ? snapshot.data?.length : 4,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final product = snapshot.data?[index];
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: ProductCard(
                  wishListIcon: ProductsWishListIcon(product: product!),
                  productImage: product.image,
                  imagehight: size.height * 0.26,
                  imageWidth: size.width * 0.5,
                  cardWidth: size.width * 0.43,
                  productName: product.name,
                  productPrice: product.price.toString(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
