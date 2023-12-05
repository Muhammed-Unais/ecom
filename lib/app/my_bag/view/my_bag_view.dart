import 'package:ecom/app/my_bag/view/widget/my_bag_added_products.dart';
import 'package:ecom/app/my_bag/view/widget/my_bag_view_appbar.dart';
import 'package:ecom/app/my_bag/view/widget/total_price_and_checkout_button.dart';
import 'package:flutter/material.dart';

class MyBagView extends StatelessWidget {
  const MyBagView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: const MyBagViewAppBar(),
      body: Column(
        children: [
          MyBagAddedProducts(size: size),
          TotalPriceAndCheckoutButton(size: size)
        ],
      ),
    );
  }
}
