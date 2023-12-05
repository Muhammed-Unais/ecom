import 'package:ecom/app/single_categories_products_listing/view_model/single_category_product_listintg_view_model.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SinglePrdouctsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const SinglePrdouctsAppBar({
    super.key,
    required this.isInBottomBar,
    this.categoryName,
  });

  final bool isInBottomBar;

  final String? categoryName;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      backgroundColor: AppColors.backgroundColor,
      surfaceTintColor: AppColors.backgroundColor,
      shadowColor: Colors.black26,
      title: Consumer<SingleCategoryProductsListingViewModel>(
        builder: (context, provider, _) {
          final itemsCount =
              provider.productsApiResponse?.data?.products.productsReturn.total;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categoryName ?? 'All Products',
                style: GoogleFonts.rubik(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              Text(
                '${itemsCount ??0} items',
                style: GoogleFonts.rubik(
                  color: const Color(0xFF5E6872),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          );
        },
      ),
      leading: isInBottomBar
          ? null
          : GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                "assets/svgs/back_arrow_icon.svg",
                height: 16,
                width: 18,
                fit: BoxFit.none,
              ),
            ),
      actions: [
        SvgPicture.asset(
          "assets/svgs/search_icon.svg",
          height: 20,
          width: 20,
        ),
        const SizedBox(
          width: 20,
        ),
        SvgPicture.asset(
          "assets/svgs/cart_bag_icon.svg",
          height: 20,
          width: 20,
          colorFilter: const ColorFilter.mode(
            AppColors.primarySeed,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(
          width: 16,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
