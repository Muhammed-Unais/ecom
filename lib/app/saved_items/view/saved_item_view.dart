import 'package:ecom/app/saved_items/view/widgets/saved_items_product_card.dart';
import 'package:ecom/app/saved_items/view/widgets/saved_items_view_appbar.dart';
import 'package:flutter/material.dart';

class SavedItemView extends StatelessWidget {
  const SavedItemView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: const SavedItemViewAppBar(),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 20),
        itemCount: 2,
        itemBuilder: (context, index) {
          return SavedItmeProductCard(
            size: size,
          );
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
    );
  }
}
