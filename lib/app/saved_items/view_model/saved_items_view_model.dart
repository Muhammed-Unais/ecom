import 'dart:developer';
import 'package:ecom/app/products_listing/model/products_model.dart';
import 'package:ecom/app/saved_items/model/saveditem_model.dart';
import 'package:ecom/app/saved_items/repository/add_saved_product_repository.dart';
import 'package:ecom/app/saved_items/repository/delete_saved_item_repository.dart';
import 'package:ecom/app/saved_items/repository/get_all_saveditem_repository.dart';
import 'package:ecom/data/local_storage/local_data_service.dart';
import 'package:flutter/material.dart';

class SavedItemViewModel extends ChangeNotifier {
  // repositories
  final _addSavedItemRepo =
      AddSavedProductRepository(LocalDataService<SavedItemModel>());

  final _getAllSavedItemRepo =
      GetAllSavedItemRepository(LocalDataService<SavedItemModel>());

  final _deleteSavedItemRepo =
      DeleteSavedItemRepository(LocalDataService<SavedItemModel>());

  // variables
  List<SavedItemModel> _savedItemModels = [];

  List<SavedItemModel> get savedItemModels => _savedItemModels;

  bool isAlreadyAdded(SingleProduct product) {
    for (var savedItem in _savedItemModels) {
      if (savedItem.name == product.name) {
        return true;
      }
    }
    return false;
  }

  Future<void> addSavedItemtoDb(SingleProduct product) async {
    if (!isAlreadyAdded(product)) {
      final savedItemModel = SavedItemModel(
        name: product.name,
        appDescription: product.appDescription,
        discount: product.discount,
        image: product.image,
        oldprice: product.oldprice,
        price: product.price,
        rating: product.rating,
        stock: product.stock,
      );
      _addSavedItemRepo.addSavedProduct(savedItemModel).then((value) {
        log("added");
      }).onError((error, stackTrace) {
        log(error.toString());
      });
    }
  }

  Future<void> deleteItemFromSavedScreen(int index) async {
    await _deleteSavedItemRepo.deleteSavedItem(index).then((value) {
      log("delted");
      getAllSavedItems();
    }).onError((error, stackTrace) {});
  }

  Future<void> randomDelete(SingleProduct product) async {
    int index = _savedItemModels
        .indexWhere((savedItem) => product.name == savedItem.name);

    deleteItemFromSavedScreen(index);
  }

  void getAllSavedItems() {
    _savedItemModels = _getAllSavedItemRepo.getAllSavedItems();
  }
}
