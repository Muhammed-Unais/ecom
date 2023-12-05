import 'package:ecom/app/my_bag/view/widget/my_bag_product_card.dart';
import 'package:ecom/app/my_bag/view_model/my_bag_view_model.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:ecom/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyBagAddedProducts extends StatelessWidget {
  const MyBagAddedProducts({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    final myBagItemsProvider = context.watch<MyBagViewModel>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      myBagItemsProvider.getAllBagItems();
    });
    return myBagItemsProvider.myBagitems.isEmpty
        ? Expanded(
          child: Center(
              child: Text(
                "It's empty in here",
                style: GoogleFonts.rubik(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primarySeed,
                ),
              ),
            ),
        )
        : Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(top: 20),
              itemCount: myBagItemsProvider.myBagitems.length,
              itemBuilder: (context, index) {
                final myBagitem = myBagItemsProvider.myBagitems[index];
                return MyBagProductCard(
                  stock: double.parse(myBagitem.stock).toInt(),
                  count: myBagitem.quntitiy,
                  discount: myBagitem.discount,
                  imageUrl: myBagitem.image,
                  oldPrice: myBagitem.oldprice,
                  price: myBagitem.price,
                  productName: myBagitem.name,
                  decreaseOnTap: () {
                    myBagItemsProvider.decreaseQuantity(index, myBagitem);
                  },
                  increaseOnTap: () {
                    myBagItemsProvider.increaseQuantity(index, myBagitem,context);
                  },
                  deleteonTap: () {
                    Utils.showDeleteDialog(
                      context,
                      onPressed: () {
                        myBagItemsProvider.removeBagItem(
                          index,
                          context,
                        );
                        Navigator.pop(context);
                      },
                    );
                  },
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
