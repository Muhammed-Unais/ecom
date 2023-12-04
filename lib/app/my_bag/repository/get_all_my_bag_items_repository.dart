import 'package:ecom/app/my_bag/model/my_bag_model.dart';
import 'package:ecom/data/local_storage/base_local_data_service.dart';

class GetAllMyBagItemRepository {
  final BaseLocalDataService<MyBagItemModel> _baseLocalDataService;

  GetAllMyBagItemRepository(this._baseLocalDataService);

  List<MyBagItemModel> getAllSavedItems()  {
    return  _baseLocalDataService.getData(dbName: "savedItemDb");
  }
}
