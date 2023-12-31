import 'package:ecom/app/saved_items/model/saveditem_model.dart';
import 'package:ecom/data/local_storage/base_local_data_service.dart';

class AddSavedProductRepository {
  final BaseLocalDataService<SavedItemModel> _baseLocalDataService;

  AddSavedProductRepository(this._baseLocalDataService);

  Future<void> addSavedProduct(SavedItemModel singleProduct) async {
    try {
      await _baseLocalDataService.postData(singleProduct,
          dbName: "savedItemDb");
    } catch (e) {
      rethrow;
    }
  }
}
