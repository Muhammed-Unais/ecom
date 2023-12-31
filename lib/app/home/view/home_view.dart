import 'package:ecom/app/home/view/widgets/home_appbar.dart';
import 'package:ecom/app/home/view/widgets/home_banner_widget.dart';
import 'package:ecom/app/home/view/widgets/home_categories_widget.dart';
import 'package:ecom/app/home/view/widgets/home_products.dart';
import 'package:ecom/app/home/view/widgets/home_products_explore_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeCategoriesWidget(size: size),
            const SizedBox(height: 20),
            HomeBannerWidget(size: size),
            const SizedBox(height: 20),
            const HomeProductsExploreButton(),
            const SizedBox(height: 15),
            HomeProducts(size: size)
          ],
        ),
      ),
    );
  }
}
