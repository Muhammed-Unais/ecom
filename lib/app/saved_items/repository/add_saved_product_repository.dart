import 'package:ecom/app/products_listing/model/products_model.dart';
import 'package:ecom/data/local_storage/base_local_data_service.dart';

class AddSavedProductRepository {
  final BaseLocalDataService<SingleProduct> _baseLocalDataService;

  AddSavedProductRepository(this._baseLocalDataService);

  Future<void> addSavedProduct(SingleProduct singleProduct) async {
    try {
      await _baseLocalDataService.postData(singleProduct);
    } catch (e) {
      rethrow;
    }
  }
}
