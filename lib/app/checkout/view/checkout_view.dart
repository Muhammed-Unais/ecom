import 'package:ecom/app/bottom_navigation_bar/view_model/bottom_bar_view_model.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:ecom/res/widgets/elavated_button_without_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: AppColors.backgroundColor,
        surfaceTintColor: AppColors.backgroundColor,
        shadowColor: Colors.black26,
        title: Text(
          'Order Confirmation',
          style: GoogleFonts.rubik(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            "assets/svgs/back_arrow_icon.svg",
            height: 16,
            width: 18,
            fit: BoxFit.none,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svgs/succuss_image.svg",
                      height: 62,
                      width: 62,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 14),
                    SvgPicture.asset(
                      "assets/svgs/noto_shopping-bags.svg",
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Thank you for shopping!',
                      style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Your order has been placed.',
                      style: GoogleFonts.rubik(
                        color: const Color(0xFF666666),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButtonWithoutIcon(
              onPressed: () {
                context.read<BottomBarViewModel>().setBottomBarCurrentScreen(1);
                Navigator.pop(context);
              },
              size: MediaQuery.of(context).size,
              buttonChildName: "CONTINUE SHOPPING",
            ),
          )
        ],
      ),
    );
  }
}
