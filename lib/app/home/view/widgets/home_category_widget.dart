import 'package:ecom/app/home/model/home_model.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:ecom/res/constants/app_url.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCategoryWidget extends StatelessWidget {
  const HomeCategoryWidget({
    super.key,
    required this.category,
    required this.size,
    required this.productImage,
  });

  final CategoryCategory? category;
  final Size size;
  final String productImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: SizedBox(
        width: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Stack(
            children: [
              FancyShimmerImage(
                imageUrl: AppUrl.categoryImageSchema + productImage,
                width: 100,
                boxFit: BoxFit.cover,
                errorWidget: Image.asset(
                  "assets/images/no_image.jpg",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  right: 5,
                ),
                child: Center(
                  child: Text(
                    category?.name ?? "category",
                    style: GoogleFonts.rubik(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.backgroundColor),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
