import 'package:ecom/app/home/view/home_view.dart';
import 'package:ecom/app/home/view_model/home_view_model.dart';
import 'package:ecom/data/app_response/status.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:ecom/res/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeCategoriesWidget extends StatefulWidget {
  const HomeCategoriesWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<HomeCategoriesWidget> createState() => _HomeCategoriesWidgetState();
}

class _HomeCategoriesWidgetState extends State<HomeCategoriesWidget> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final homeProvider = context.read<HomeViewModel>();
      homeProvider.homeApiResponse ?? homeProvider.getHomeDetails();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height * 0.15,
      child: Consumer<HomeViewModel>(
        builder: (context, homeProvider, _) {
          final response = homeProvider.homeApiResponse;
          switch (response?.status) {
            case Status.loading:
              return ListView.builder(
                padding: const EdgeInsets.only(left: 16, top: 18),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ShimerWidget.rectangular(
                    hight: widget.size.height * 0.15,
                    width: 100,
                    verticalMargin: 10,
                  );
                },
              );
            case Status.completed:
              return ListView.builder(
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
              );
            case Status.error:
              return Center(
                child: Text(
                  response?.message.toString() ?? "",
                ),
              );
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
