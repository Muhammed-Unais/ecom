import 'package:ecom/app/products_listing/model/products_model.dart';
import 'package:ecom/app/products_listing/view/widgets/products_view_appbar.dart';
import 'package:ecom/app/products_listing/view_model/products_listing_view_model.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:ecom/res/widgets/product_card.dart';
import 'package:ecom/res/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PrdouctsAppBar(),
      body: FutureBuilder<List<SingleProduct>>(
        future: context.watch<ProductsListingViewModel>().getAllProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return GridView.builder(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
              shrinkWrap: true,
              itemCount: 8,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 10,
                childAspectRatio: 1 / 1.5,
              ),
              itemBuilder: (context, index) {
                return ShimerWidget.rectangular(
                  width: size.width * 0.5,
                  hight: size.height * 0.15,
                  verticalMargin: 10,
                  borderRadius: 6,
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                "${snapshot.error}",
                style: const TextStyle(color: Colors.black),
              ),
            );
          } else if (snapshot.data == null) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          }
          return GridView.builder(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
            shrinkWrap: true,
            itemCount: snapshot.data?.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 10,
              childAspectRatio: 1 / 1.5,
            ),
            itemBuilder: (context, index) {
              final product = snapshot.data?[index];
              return ProductCard(
                wishListIcon: GestureDetector(
                  onTap: () {
                    
                  },
                  child: SvgPicture.asset(
                    "assets/svgs/favorite_icon.svg",
                    colorFilter: const ColorFilter.mode(
                      AppColors.primarySeed,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                productImage: product?.image ?? "",
                cardWidth: 0,
                imagehight: size.height * 0.26,
                imageWidth: size.width * 0.5,
                productName: product?.name ?? "No title",
                productPrice: product?.price.toString() ?? "0.00",
              );
            },
          );
        },
      ),
    );
  }
}
