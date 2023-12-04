import 'package:ecom/app/saved_items/view/widgets/saved_items_product_card.dart';
import 'package:ecom/app/saved_items/view/widgets/saved_items_view_appbar.dart';
import 'package:ecom/app/saved_items/view_model/saved_items_view_model.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:ecom/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SavedItemView extends StatelessWidget {
  const SavedItemView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final savedItemsProvider = context.watch<SavedItemViewModel>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      savedItemsProvider.getAllSavedItems();
    });
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: SavedItemViewAppBar(
        itemsCount: savedItemsProvider.savedItemModels.length,
      ),
      body: savedItemsProvider.savedItemModels.isEmpty
          ? Center(
              child: Text(
                "It's empty in here",
                style: GoogleFonts.rubik(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primarySeed,
                ),
              ),
            )
          : ListView.separated(
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
                    Utils.showDeleteDialog(
                      context,
                      onPressed: () {
                        savedItemsProvider.deleteItemFromSavedScreen(
                          index,
                          context,
                        );
                        Navigator.pop(context);
                      },
                    );
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
