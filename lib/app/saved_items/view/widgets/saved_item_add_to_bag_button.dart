import 'package:ecom/app/my_bag/view_model/my_bag_view_model.dart';
import 'package:ecom/app/saved_items/model/saveditem_model.dart';
import 'package:ecom/res/widgets/elavated_button_with_icon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SavedItemAddToBagButton extends StatelessWidget {
  const SavedItemAddToBagButton({
    super.key,
    required this.size,
    required this.savedItemModel,
  });

  final Size size;
  final SavedItemModel savedItemModel;

  @override
  Widget build(BuildContext context) {
    return Consumer<MyBagViewModel>(builder: (context, myBagProvider, _) {
      bool isInCart = myBagProvider.isInCart(savedItemModel.name);
      return SizedBox(
        width: size.width * 0.65,
        child: ElevatedButtonWithIcon(
          onPressed: isInCart
              ? null
              : () {
                  myBagProvider.addItem(savedItemModel, context);
                },
          width: size.width * 0.5,
          buttonChildName:isInCart ? "ITEM IN BAG": "ADD TO BAG",
          svgIcon: "assets/svgs/cart_bag_icon.svg",
          hight: 35,
        ),
      );
    });
  }
}
