import 'package:ecom/app/bottom_navigation_bar/view_model/bottom_bar_view_model.dart';
import 'package:ecom/app/home/view/home_view.dart';
import 'package:ecom/app/products_listing/view/products_view.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  List<Widget> screens = [
    const HomeView(),
    const ProductsView(),
    const Text("My bag"),
    const Text("Saved Item"),
  ];

  @override
  Widget build(BuildContext context) {
   
    return Consumer<BottomBarViewModel>(
        builder: (context, bottombarProvider, _) {
      return Scaffold(
        body: screens[bottombarProvider.currentIndex],
        backgroundColor: AppColors.backgroundColor,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            bottombarProvider.setBottomBarCurrentScreen(value);
          },
          currentIndex: 0,
          iconSize: 24,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          backgroundColor: AppColors.backgroundColor,
          elevation: 10,
          selectedItemColor: AppColors.primarySeed,
          unselectedItemColor: AppColors.secondaryColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "Home",
              icon: SvgPicture.asset(
                "assets/svgs/home_icon.svg",
                height: 25,
                width: 25,
              ),
            ),
            BottomNavigationBarItem(
              label: "Products",
              icon: SvgPicture.asset(
                "assets/svgs/category_icon.svg",
                height: 25,
                width: 25,
              ),
            ),
            BottomNavigationBarItem(
              label: "My Bag",
              icon: SvgPicture.asset(
                "assets/svgs/cart_bag_icon.svg",
                height: 25,
                width: 25,
              ),
            ),
            BottomNavigationBarItem(
              label: "Saved Items",
              icon: SvgPicture.asset(
                "assets/svgs/favorite_icon.svg",
                height: 25,
                width: 25,
              ),
            ),
          ],
        ),
      );
    });
  }
}
