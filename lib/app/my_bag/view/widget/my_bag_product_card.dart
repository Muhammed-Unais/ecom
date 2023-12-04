import 'package:ecom/app/home/view/home_view.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBagProductCard extends StatelessWidget {
  const MyBagProductCard({
    super.key,
    required this.size,
  });

  final Size size;
 
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
          deleteIcon(),
          Row(
            children: [
              Image.network(
                tempcategoryImage,
                fit: BoxFit.cover,
                width: size.width * 0.26,
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  productName(),
                  const SizedBox(height: 10),
                  productMrp(),
                  const SizedBox(height: 10),
                  priceAndOffer(),
                  const SizedBox(height: 10),
                  sizeColorAndQuntity(),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Text productMrp() {
    return Text(
      '£60.00',
      style: GoogleFonts.rubik(
        color: const Color(0xFF828282),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.lineThrough,
        height: 0,
      ),
    );
  }

  SizedBox productName() {
    return SizedBox(
      width: size.width * 0.5,
      child: Text(
        "Men's Black The Ryuk Graphic Printed Oversized T-shirt",
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

  Positioned deleteIcon() {
    return Positioned(
      right: 0,
      top: 0,
      child: GestureDetector(
        onTap: () {},
        child: SvgPicture.asset(
          "assets/svgs/delete_icon.svg",
          height: 24,
          width: 24,
        ),
      ),
    );
  }

  SizedBox priceAndOffer() {
    return SizedBox(
      width: size.width * 0.5,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text(
            '£3999.95',
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
          Text(
            '20% OFF',
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
          quatityController()
        ],
      ),
    );
  }

   quatityController() {
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
        Container(
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
        const SizedBox(width: 8),
        Text(
          '1',
          style: GoogleFonts.rubik(
            color: AppColors.primarySeed,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        const SizedBox(width: 8),
        Container(
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
      ],
    );
  }
}
