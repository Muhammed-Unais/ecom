import 'package:ecom/res/constants/app_colors.dart';
import 'package:ecom/res/constants/app_url.dart';
import 'package:ecom/res/widgets/elavated_button_with_icon.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SavedItmeProductCard extends StatelessWidget {
  const SavedItmeProductCard({
    super.key,
    required this.size,
    required this.productimageUrl,
    required this.productName,
    required this.productOldPrice,
    required this.productPrice,
    required this.discount, this.deleteonTap,
  });

  final Size size;
  final String productimageUrl;
  final String productName;
  final String productOldPrice;
  final String productPrice;
  final String discount;
  final void Function()? deleteonTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
        left: 16,
        right: 16,
      ),
      child: Stack(
        children: [
          deleteIcon(onTap: deleteonTap),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  cardProductImage(productimageUrl),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      productNameWidget(productName),
                      const SizedBox(height: 10),
                      productMrp(productOldPrice),
                      const SizedBox(height: 10),
                      priceAndOffer(productPrice, discount),
                      const SizedBox(height: 10),
                      sizeColorAndQuntity(),
                    ],
                  )
                ],
              ),
              addTobagButton(),
            ],
          ),
        ],
      ),
    );
  }

  Flexible cardProductImage(String imageUrl) {
    return Flexible(
      child: FancyShimmerImage(
        imageUrl: AppUrl.productImageSchema + imageUrl,
        width: size.width * 0.26,
        height: size.height * 0.15,
        boxFit: BoxFit.cover,
        errorWidget: Image.asset(
          "assets/images/no_image.jpg",
        ),
      ),
    );
  }

  SizedBox addTobagButton() {
    return SizedBox(
      width: size.width * 0.65,
      child: ElevatedButtonWithIcon(
        onPressed: () {},
        width: size.width * 0.5,
        buttonChildName: "ADD TO BAG",
        svgIcon: "assets/svgs/cart_bag_icon.svg",
        hight: 35,
      ),
    );
  }

  Text productMrp(String productOldPrice) {
    return Text(
      '£$productOldPrice',
      style: GoogleFonts.rubik(
        color: const Color(0xFF828282),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.lineThrough,
        height: 0,
      ),
    );
  }

  SizedBox productNameWidget(String productName) {
    return SizedBox(
      width: size.width * 0.5,
      child: Text(
        productName,
        style: GoogleFonts.rubik(
          color: AppColors.primarySeed,
          fontSize: 11,
          fontWeight: FontWeight.w400,
        ),
        overflow: TextOverflow.clip,
        maxLines: 2,
      ),
    );
  }

  Positioned deleteIcon({void Function()? onTap}) {
    return Positioned(
      right: 0,
      top: 0,
      child: GestureDetector(
        onTap: onTap,
        child: SvgPicture.asset(
          "assets/svgs/delete_icon.svg",
          height: 24,
          width: 24,
        ),
      ),
    );
  }

  SizedBox priceAndOffer(String productPrice, String discount) {
    return SizedBox(
      width: size.width * 0.5,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text(
            '£3$productPrice',
            style: GoogleFonts.rubik(
              color: AppColors.primarySeed,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          discount.contains("0|nil")
              ? const SizedBox()
              : Text(
                  '$discount% OFF',
                  style: GoogleFonts.rubik(
                    color: const Color(0xFF2F935F),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                )
        ],
      ),
    );
  }

  SizedBox sizeColorAndQuntity() {
    return SizedBox(
      width: size.width * 0.5,
      child: Row(
        textDirection: TextDirection.ltr,
        children: [
          Text(
            'XL / Beige',
            style: GoogleFonts.rubik(
              color: AppColors.primarySeed,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
