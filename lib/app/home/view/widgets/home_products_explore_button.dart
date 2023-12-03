import 'package:ecom/res/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeProductsExploreButton extends StatelessWidget {
  const HomeProductsExploreButton({
    super.key, this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Our Products',
            style: GoogleFonts.rubik(
              color: AppColors.primarySeed,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              'Explore All',
              style: GoogleFonts.rubik(
                color: const Color(0xFF54A09E),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
