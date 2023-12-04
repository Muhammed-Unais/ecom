import 'package:ecom/app/home/view_model/home_view_model.dart';
import 'package:ecom/data/app_response/status.dart';
import 'package:ecom/res/constants/app_url.dart';
import 'package:ecom/res/widgets/shimmer_widget.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget(
      {super.key, required this.size,});

  final Size size;


  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context, homeProvider, _) {
        switch (homeProvider.homeApiResponse?.status) {
          case Status.loading:
            return Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: ShimerWidget.rectangular(
                width: size.width,
                hight: size.height * 0.3,
                verticalMargin: 20,
              ),
            );
          case Status.completed:
          final banner =homeProvider.homeApiResponse?.data?.banner1[0];
            return Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: SizedBox(
                width: size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Stack(
                    children: [
                      FancyShimmerImage(
                        imageUrl: AppUrl.bannerImageSchema + banner!.image,
                        width: size.width,
                        boxFit: BoxFit.fill,
                        errorWidget: Image.asset(
                          "assets/images/no_image.jpg",
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        left: 36,
                        right: 36,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Stay Toasty In Winter-Full Layers With ',
                                style: GoogleFonts.rubik(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'Snug Jackets',
                                style: GoogleFonts.rubik(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );

          case Status.error:
            return GestureDetector(
              onTap: () {
                homeProvider.getHomeDetails();
              },
              child: SizedBox(
                height: size.height * 0.5,
                width: size.width,
                child: Center(
                  child: Text(
                    "${homeProvider.homeApiResponse?.message.toString() ?? ""} Retry",
                  ),
                ),
              ),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}
