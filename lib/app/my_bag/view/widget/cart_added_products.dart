import 'package:ecom/app/my_bag/view/widget/my_bag_product_card.dart';
import 'package:flutter/material.dart';

class CartAddedProducts extends StatelessWidget {
  const CartAddedProducts({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.only(top: 20),
        itemCount: 2,
        itemBuilder: (context, index) {
          return MyBagProductCard(size: size);
        },
        separatorBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              color: Color(0xFFEFEFEF),
              height: 0.2,
            ),
          );
        },
      ),
    );
  }
}