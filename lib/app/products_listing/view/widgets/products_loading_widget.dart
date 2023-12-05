import 'package:ecom/res/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';

class ProductsLoadingWidget extends StatelessWidget {
  const ProductsLoadingWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 10,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return ShimerWidget.rectangular(
          width: size.width * 0.5,
          hight: size.height * 0.15,
          verticalMargin: 10,
          borderRadius: 6,
        );
      },
    );
  }
}
