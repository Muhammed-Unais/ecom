import 'package:ecom/res/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      backgroundColor: AppColors.backgroundColor,
      surfaceTintColor: AppColors.backgroundColor,
      shadowColor: Colors.black26,
      title: const Text(""),
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