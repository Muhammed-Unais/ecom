import 'package:ecom/app/order_status/view/checkout_view.dart';
import 'package:ecom/app/my_bag/view_model/my_bag_view_model.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:ecom/res/widgets/elavated_button_without_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TotalPriceAndCheckoutButton extends StatelessWidget {
  const TotalPriceAndCheckoutButton({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    final total = context.watch<MyBagViewModel>().getTotal();
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 3,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'TOTAL:',
                      style: GoogleFonts.rubik(
                        color: AppColors.primarySeed,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: ' (excluding delivery)',
                      style: GoogleFonts.rubik(
                        color: const Color(0xFF676767),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                '£$total',
                style: GoogleFonts.rubik(
                  color: AppColors.primarySeed,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              color: Color(0xFFEFEFEF),
              height: 0.2,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButtonWithoutIcon(
            size: size,
            buttonChildName: "CHECKOUT",
            onPressed: () {
              context.read<MyBagViewModel>().clearCart().then((value) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const OrderStatusView();
                    },
                  ),
                );
              });
            },
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
