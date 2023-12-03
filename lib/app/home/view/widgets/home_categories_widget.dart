import 'package:ecom/app/home/view/home_view.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCategoriesWidget extends StatelessWidget {
  const HomeCategoriesWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.15,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 16, top: 18),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SizedBox(
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Stack(
                  children: [
                    Image.network(
                      tempcategoryImage,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                      ),
                      child: Center(
                        child: Text(
                          "Category",
                          style: GoogleFonts.rubik(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.backgroundColor),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
