import 'package:ecom/res/constants/app_colors.dart';
import 'package:ecom/res/constants/app_url.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBagProductCard extends StatelessWidget {
  const MyBagProductCard({
    super.key,
    required this.size,
    this.deleteonTap,
    required this.imageUrl,
    required this.productName,
    required this.oldPrice,
    required this.price,
    required this.discount,
    this.decreaseOnTap,
    this.increaseOnTap,
    required this.count,
    required this.stock,
  });

  final Size size;
  final void Function()? deleteonTap;
  final String imageUrl;
  final String productName;
  final String oldPrice;
  final String price;
  final String discount;
  final void Function()? decreaseOnTap;
  final void Function()? increaseOnTap;
  final int count;
  final int stock;

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
          Row(
            children: [
              Flexible(
                child: FancyShimmerImage(
                  imageUrl: AppUrl.productImageSchema + imageUrl,
                  width: size.width * 0.26,
                  height: size.height * 0.17,
                  boxFit: BoxFit.cover,
                  errorWidget: Image.asset(
                    "assets/images/no_image.jpg",
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  productNameWidget(productName),
                  const SizedBox(height: 10),
                  productMrp(oldPrice),
                  const SizedBox(height: 10),
                  priceAndOffer(price, discount),
                  const SizedBox(height: 10),
                  sizeColorAndQuntity(
                    count: count,
                    decreaseOnTap: decreaseOnTap,
                    increaseOnTap: increaseOnTap,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Text productMrp(String oldPrice) {
    return Text(
      '£$oldPrice',
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

  SizedBox priceAndOffer(String price, String discount) {
    return SizedBox(
      width: size.width * 0.5,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text(
            '£$price',
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

  SizedBox sizeColorAndQuntity(
      {void Function()? decreaseOnTap,
      void Function()? increaseOnTap,
      required int count}) {
    return SizedBox(
      width: size.width * 0.5,
      child: Wrap(
        textDirection: TextDirection.ltr,
        runSpacing: 5,
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
          stock < 1
              ? Text(
                  "Item not available",
                  style: GoogleFonts.rubik(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.w300,
                  ),
                )
              : quatityController(
                  count: count,
                  decreaseOnTap: decreaseOnTap,
                  increaseOnTap: increaseOnTap,
                )
        ],
      ),
    );
  }

  quatityController(
      {void Function()? decreaseOnTap,
      void Function()? increaseOnTap,
      required int count}) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(
          'Qty : ',
          style: GoogleFonts.rubik(
            color: AppColors.primarySeed,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        GestureDetector(
          onTap: decreaseOnTap,
          child: Container(
            width: 22,
            height: 22,
            decoration: ShapeDecoration(
              color: const Color(0xFFEEEEEE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: const Icon(
              Icons.remove,
              color: AppColors.primarySeed,
              size: 16,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          count.toString(),
          style: GoogleFonts.rubik(
            color: AppColors.primarySeed,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: increaseOnTap,
          child: Container(
            width: 22,
            height: 22,
            decoration: ShapeDecoration(
              color: const Color(0xFFEEEEEE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: const Icon(
              Icons.add,
              color: AppColors.primarySeed,
              size: 16,
            ),
          ),
        ),
      ],
    );
  }
}
