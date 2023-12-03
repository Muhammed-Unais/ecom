import 'package:ecom/res/constants/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height *0.4,
      child: ListView.builder(
        padding:const EdgeInsets.only(left: 16),
        itemCount: 4,
        
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: ProductCard(
              imageWidth: size.width * 0.5,
              cardhight: size.height * 0.4,
              cardWidth: size.width * 0.5,
              productName: "Men's Graphic Oversized T-Shirt",
              productPrice: "39.95",
            ),
          );
        },
      ),
    );
  }
}