import 'package:ecom/app/home/view/widgets/home_category_widget.dart';
import 'package:ecom/app/home/view_model/home_view_model.dart';
import 'package:ecom/data/app_response/status.dart';
import 'package:ecom/res/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';
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
                itemCount: response?.data?.categories.length,
                itemBuilder: (context, index) {
                  final categoriesElement = response?.data?.categories[index];
                  final category = categoriesElement?.category;
                  return HomeCategoryWidget(
                    productImage: category?.image ?? "",
                    category: category,
                    size: widget.size,
                  );
                },
              );
            case Status.error:
              return const SizedBox(
                height: 100,
                child: Center(
                  child: Text(
                     "",
                  ),
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
