import 'package:ecom/app/my_bag/view/widget/my_bag_view_appbar.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:ecom/res/widgets/cart_product_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBagView extends StatelessWidget {
  const MyBagView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: const MyBagViewAppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(top: 20),
              itemCount: 2,
              itemBuilder: (context, index) {
                return CartProductCard(size: size);
              },
              separatorBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Divider(
                    color: Color(0xFFEFEFEF),
                    height: 0.2,
                  ),
                );
              },
            ),
          ),
          Container(
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
                      '£79.90',
                      style: GoogleFonts.rubik(
                        color: AppColors.primarySeed,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    )
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    minimumSize: Size(size.width, 50),
                  ),
                  onPressed: () {},
                  child: Text(
                    'CHECKOUT',
                    style: GoogleFonts.rubik(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
