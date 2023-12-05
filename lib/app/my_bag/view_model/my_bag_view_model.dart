import 'dart:developer';
import 'package:ecom/app/my_bag/model/my_bag_model.dart';
import 'package:ecom/app/my_bag/repository/add_my_bag_items_repository.dart';
import 'package:ecom/app/my_bag/repository/delete_my_bag_items_repository.dart';
import 'package:ecom/app/my_bag/repository/edit_my_bag_item_repository.dart';
import 'package:ecom/app/my_bag/repository/get_all_my_bag_items_repository.dart';
import 'package:ecom/app/saved_items/model/saveditem_model.dart';
import 'package:ecom/data/local_storage/local_data_service.dart';
import 'package:ecom/utils/utils.dart';
import 'package:flutter/material.dart';

class MyBagViewModel extends ChangeNotifier {
  // Repositories
  final _addMyBagItemRepo =
      AddMyBagItemRepository(LocalDataService<MyBagItemModel>());

  final _getAllMyBagItemRepo =
      GetAllMyBagItemRepository(LocalDataService<MyBagItemModel>());

  final _deleteMyBagItemRepo =
      DeleteMyBagItemRepository(LocalDataService<MyBagItemModel>());

  final _editMyBagItemRepo =
      EditMyBagItemRepository(LocalDataService<MyBagItemModel>());

  // variables
  List<MyBagItemModel> _myBagitems = [];

  List<MyBagItemModel> get myBagitems => _myBagitems;

  Future<void> addItem(SavedItemModel product, BuildContext context) async {
    final myBagItemModel = MyBagItemModel(
      name: product.name,
      stock: product.stock,
      oldprice: product.oldprice,
      price: product.price,
      discount: product.discount,
      image: product.image,
      quntitiy: 1,
    );

    if (!isInCart(product.name)) {
      _addMyBagItemRepo.addMyBagItem(myBagItemModel).then((value) {
        getAllBagItems();
        Utils.showCustomSnackBar(
          context,
          "Product is added to My Bag",
          actionLabel: "",
          onPressed: () {},
        );
      }).onError((error, stackTrace) {
        Utils.showCustomSnackBar(
          context,
          "Some thing went wrong",
          actionLabel: "",
          onPressed: () {},
        );
      });
    }
  }

  void getAllBagItems() {
    _myBagitems = _getAllMyBagItemRepo.getAllSavedItems();
    notifyListeners();
  }

  bool isInCart(String name) {
    for (var element in _myBagitems) {
      if (element.name == name) {
        return true;
      }
    }
    return false;
  }

  Future<void> removeBagItem(int index, BuildContext context) async {
    _deleteMyBagItemRepo.deleteMyBagItem(index).then((value) {
      getAllBagItems();
      Utils.showCustomSnackBar(
        context,
        "Product is removed from My Bag",
        actionLabel: "",
        onPressed: () {},
      );
    }).onError((error, stackTrace) {
      Utils.showCustomSnackBar(
        context,
        "Something went wrong",
        actionLabel: "",
        onPressed: () {},
      );
    });
  }

  void increaseQuantity(int index, MyBagItemModel model, BuildContext context) {
    final stock = double.parse(model.stock).toInt();
    log(stock.toString());

    if (_myBagitems[index].quntitiy < stock) {
      _myBagitems[index].quntitiy++;
      final newModel = model.copyWith(quantity: _myBagitems[index].quntitiy);
      _editMyBagItemRepo.editMyBagItem(index, newModel);
      notifyListeners();
    } else {
      Utils.showCustomSnackBar(
        context,
        "Stock not available",
        actionLabel: "",
        onPressed: () {},
      );
    }
  }

  void decreaseQuantity(int index, MyBagItemModel model) {
    if (_myBagitems[index].quntitiy > 1) {
      _myBagitems[index].quntitiy--;
      final newModel = model.copyWith(quantity: _myBagitems[index].quntitiy);
      _editMyBagItemRepo.editMyBagItem(index, newModel);
      notifyListeners();
    }
  }

  double getTotal() {
    List<double> totalAmounts = _myBagitems.map((e) {
      if (double.parse(e.stock).toInt() > 0) {
        return double.parse(e.price) * e.quntitiy;
      } else {
        return 0.00;
      }
    }).toList();
    double sum = 0;
    for (var element in totalAmounts) {
      sum += element;
    }
    return sum.floorToDouble();
  }

  Future<void> clearCart() async {
    await _deleteMyBagItemRepo.clearAllBagItem();
    notifyListeners();
  }
}
