import 'package:ecom/app/my_bag/model/my_bag_model.dart';
import 'package:ecom/data/local_storage/base_local_data_service.dart';

class AddMyBagItemRepository {
  final BaseLocalDataService<MyBagItemModel> _baseLocalDataService;

  AddMyBagItemRepository(this._baseLocalDataService);

  Future<void> addSavedProduct(MyBagItemModel singleProduct) async {
    try {
      await _baseLocalDataService.postData(singleProduct,
          dbName: "myBagItemDb");
    } catch (e) {
      rethrow;
    }
  }
}
