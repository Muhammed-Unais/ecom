import 'package:ecom/res/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBagViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyBagViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      backgroundColor: AppColors.backgroundColor,
      surfaceTintColor: AppColors.backgroundColor,
      shadowColor: Colors.black26,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Bag',
            style: GoogleFonts.rubik(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          Text(
            '4 items',
            style: GoogleFonts.rubik(
              color: const Color(0xFF5E6872),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ],
      ),
      leading: GestureDetector(
        onTap: () {
          // Navigator.pop(context);
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
          "assets/svgs/favorite_icon.svg",
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
