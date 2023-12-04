import 'package:ecom/app/saved_items/view/widgets/saved_items_product_card.dart';
import 'package:ecom/app/saved_items/view/widgets/saved_items_view_appbar.dart';
import 'package:ecom/app/saved_items/view_model/saved_items_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SavedItemView extends StatelessWidget {
  const SavedItemView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final savedItemsProvider = context.watch<SavedItemViewModel>();
    savedItemsProvider.getAllSavedItems();
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: const SavedItemViewAppBar(),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 20),
        itemCount: savedItemsProvider.savedItemModels.length,
        itemBuilder: (context, index) {
          final savedProduct = savedItemsProvider.savedItemModels[index];
          return SavedItmeProductCard(
            discount: savedProduct.discount,
            productName: savedProduct.name,
            productOldPrice: savedProduct.oldprice,
            productPrice: savedProduct.price,
            productimageUrl: savedProduct.image,
            size: size,
            deleteonTap: () {
              
            },
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
