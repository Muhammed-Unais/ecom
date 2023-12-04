import 'package:ecom/app/my_bag/model/my_bag_model.dart';
import 'package:ecom/app/my_bag/repository/add_my_bag_items_repository.dart';
import 'package:ecom/app/my_bag/repository/delete_my_bag_items_repository.dart';
import 'package:ecom/app/my_bag/repository/edit_my_bag_item_repository.dart';
import 'package:ecom/app/my_bag/repository/get_all_my_bag_items_repository.dart';
import 'package:ecom/app/products_listing/model/products_model.dart';
import 'package:ecom/data/local_storage/local_data_service.dart';
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

  Future<void> addItem(SingleProduct product, BuildContext context) async {
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
      }).onError((error, stackTrace) {});
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
    }).onError((error, stackTrace) {});
  }

  void increaseQuantity(int index, MyBagItemModel model) {
    _myBagitems[index].quntitiy++;
    final newModel = model.copyWith(quantity: _myBagitems[index].quntitiy);
    _editMyBagItemRepo.editMyBagItem(index, newModel);
    notifyListeners();
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
    return _myBagitems.fold(
        0, (sum, item) => sum + double.parse(item.price) * item.quntitiy);
  }

  Future<void> clearCart() async{
    await _deleteMyBagItemRepo.clearAllBagItem();
    notifyListeners();
  }
}
