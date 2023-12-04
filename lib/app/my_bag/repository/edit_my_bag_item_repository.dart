import 'package:ecom/app/my_bag/model/my_bag_model.dart';
import 'package:ecom/data/local_storage/base_local_data_service.dart';

class EditMyBagItemRepository {
  final BaseLocalDataService<MyBagItemModel> _baseLocalDataService;

  EditMyBagItemRepository(this._baseLocalDataService);

  Future<void> editMyBagItem(int index, MyBagItemModel model) async {
    try {
      _baseLocalDataService.putData(index, model, dbName: "myBagItemDb");
    } catch (e) {
      rethrow;
    }
  }
}
