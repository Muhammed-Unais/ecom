import 'package:ecom/app/home/view/home_view.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.imageWidth,
    required this.cardhight,
    required this.cardWidth,
    this.onTapWishlist,
    this.productImage = tempcategoryImage,
    required this.productName,
    required this.productPrice,
  });

  final double imageWidth;
  final double cardhight;
  final double cardWidth;
  final void Function()? onTapWishlist;
  final String productImage;
  final String productName;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cardWidth,
      height: cardhight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Stack(
              children: [
                Image.network(
                  productImage,
                  width: imageWidth,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: 16,
                  top: 16,
                  child: GestureDetector(
                    onTap: onTapWishlist,
                    child: SvgPicture.asset(
                      "assets/svgs/favorite_icon.svg",
                      colorFilter: const ColorFilter.mode(
                        AppColors.primarySeed,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Men s Graphic Oversized T-Shirt',
            style: GoogleFonts.rubik(
              color: AppColors.primarySeed,
              fontSize: 10,
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '£$productPrice',
            style: GoogleFonts.rubik(
              color: AppColors.primarySeed,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          )
        ],
      ),
    );
  }
}
