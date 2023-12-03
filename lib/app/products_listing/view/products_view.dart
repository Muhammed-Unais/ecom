import 'package:ecom/app/products_listing/view/widgets/products_view_appbar.dart';
import 'package:ecom/res/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PrdouctsAppBar(),
      body: GridView.builder(
        padding:const EdgeInsets.only(left: 16,right: 16,top: 20),
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 0,
          childAspectRatio: 1 / 1.8,
        ),
        itemBuilder: (context, index) {
          return ProductCard(
            cardWidth: size.width * 0.5,
            cardhight: size.height * 0.2,
            imageWidth: size.width * 0.5,
            productName: "New Product",
            productPrice: "345",
          );
        },
      ),
    );
  }
}
