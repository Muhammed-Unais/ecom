import 'package:ecom/res/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ElevatedButtonWithIcon extends StatelessWidget {
  const ElevatedButtonWithIcon({
    super.key,
    required this.width,
    this.onPressed,
    required this.buttonChildName,
    required this.svgIcon,
    required this.hight,
  });

  final double width;
  final double hight;
  final void Function()? onPressed;
  final String buttonChildName;
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        minimumSize: Size(width, hight),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgIcon,
            height: 16,
            width: 16,
            colorFilter: const ColorFilter.mode(
              AppColors.backgroundColor,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            buttonChildName,
            style: GoogleFonts.rubik(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}
