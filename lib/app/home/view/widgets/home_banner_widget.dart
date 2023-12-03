import 'package:ecom/app/home/view/home_view.dart';
import 'package:ecom/app/home/view_model/home_view_model.dart';
import 'package:ecom/data/app_response/status.dart';
import 'package:ecom/res/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeBannerWidget extends StatefulWidget {
  const HomeBannerWidget({super.key, required this.size});

  final Size size;

  @override
  State<HomeBannerWidget> createState() => _HomeBannerWidgetState();
}

class _HomeBannerWidgetState extends State<HomeBannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context, homeProvider, _) {
        switch (homeProvider.homeApiResponse?.status) {
          case Status.loading:
            return Padding(
              padding: const EdgeInsets.only(left: 16,right: 16),
              child: ShimerWidget.rectangular(
                width: widget.size.width,
                hight: widget.size.height * 0.5,
                verticalMargin: 20,
              ),
            );
          case Status.completed:
            return Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: SizedBox(
                height: widget.size.height * 0.5,
                width: widget.size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Stack(
                    children: [
                      Image.network(
                        width: widget.size.width,
                        tempcategoryImage,
                        fit: BoxFit.cover,
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
            return Text(homeProvider.homeApiResponse?.message.toString() ?? "");
          default:
            return const SizedBox();
        }
      },
    );
  }
}
