import 'package:ecom/app/products_listing/model/products_model.dart';
import 'package:ecom/app/saved_items/view_model/saved_items_view_model.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ProductsWishListIcon extends StatelessWidget {
  const ProductsWishListIcon({
    super.key,
    required this.product,
  });

  final SingleProduct product;

  @override
  Widget build(BuildContext context) {
    return Consumer<SavedItemViewModel>(
      builder: (context, savedItemsProvider, _) {
        bool isInWishList = savedItemsProvider.isAlreadyAdded(product);
        return InkWell(
          onTap: () {
            if (isInWishList) {
              savedItemsProvider.randomDelete(product,context);
            } else {
              savedItemsProvider.addSavedItemtoDb(product,context);
            }
          },
          child: isInWishList
              ? const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 22,
                )
              : SvgPicture.asset(
                  "assets/svgs/favorite_icon.svg",
                  colorFilter: const ColorFilter.mode(
                    AppColors.primarySeed,
                    BlendMode.srcIn,
                  ),
                  height: 17,
                  width: 20,
                ),
        );
      },
    );
  }
}