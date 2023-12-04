import 'package:ecom/app/products_listing/model/products_model.dart';
import 'package:ecom/app/saved_items/model/saveditem_model.dart';
import 'package:ecom/app/saved_items/repository/add_saved_product_repository.dart';
import 'package:ecom/app/saved_items/repository/delete_saved_item_repository.dart';
import 'package:ecom/app/saved_items/repository/get_all_saveditem_repository.dart';
import 'package:ecom/data/local_storage/local_data_service.dart';
import 'package:ecom/utils/utils.dart';
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

  Future<void> addSavedItemtoDb(SingleProduct product,BuildContext context) async {
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
        Utils.showCustomSnackBar(
        context,
        "Product is added to My Saved Items",
        actionLabel: "",
        onPressed: () {},
      );
        getAllSavedItems();
      }).onError((error, stackTrace) {
         Utils.showCustomSnackBar(
        context,
        "Something went wrong",
        actionLabel: "",
        onPressed: () {},
      );
      });
    }
  }

  Future<void> deleteItemFromSavedScreen(
      int index, BuildContext context) async {
    await _deleteSavedItemRepo.deleteSavedItem(index).then((value) {
      Utils.showCustomSnackBar(
        context,
        "Product is removed from My Saved Items",
        actionLabel: "",
        onPressed: () {},
      );
      getAllSavedItems();
    }).onError((error, stackTrace) {
      Utils.showCustomSnackBar(
        context,
        "Something went wrong",
        actionLabel: "",
        onPressed: () {},
      );
    });
  }

  Future<void> randomDelete(SingleProduct product, BuildContext context) async {
    int index = _savedItemModels
        .indexWhere((savedItem) => product.name == savedItem.name);

    deleteItemFromSavedScreen(index, context);
  }

  void getAllSavedItems() {
    _savedItemModels = _getAllSavedItemRepo.getAllSavedItems();
    notifyListeners();
  }
}
