import 'package:ecom/app/home/view/home_view.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:ecom/res/constants/app_url.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.imageWidth,
    required this.cardWidth,
    this.productImage = tempcategoryImage,
    required this.productName,
    required this.productPrice,
    required this.imagehight, required this.wishListIcon,
  });

  final double imageWidth;
  final double imagehight;
  final double cardWidth;
  final String productImage;
  final String productName;
  final String productPrice;
  final Widget wishListIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Stack(
                children: [
                  FancyShimmerImage(
                    imageUrl: AppUrl.productImageSchema + productImage,
                    height: imagehight,
                    width: imageWidth,
                    boxFit: BoxFit.cover,
                    errorWidget: Image.asset(
                      "assets/images/no_image.jpg",
                    ),
                  ),
                  Positioned(
                    right: 16,
                    top: 16,
                    child: wishListIcon,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            productName,
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
