import 'package:ecom/app/my_bag/model/my_bag_model.dart';
import 'package:ecom/data/local_storage/base_local_data_service.dart';

class DeleteMyBagItemRepository {
  final BaseLocalDataService<MyBagItemModel> _baseLocalDataService;

  DeleteMyBagItemRepository(this._baseLocalDataService);

  Future<void> deleteMyBagItem(int index) async {
    try {
      await _baseLocalDataService.deleteData(index, dbName: "myBagItemDb");
    } catch (e) {
      rethrow;
    }
  }
}