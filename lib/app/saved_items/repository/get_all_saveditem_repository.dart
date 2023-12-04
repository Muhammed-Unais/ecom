import 'package:ecom/app/saved_items/model/saveditem_model.dart';
import 'package:ecom/data/local_storage/base_local_data_service.dart';

class GetAllSavedItemRepository {
  final BaseLocalDataService<SavedItemModel> _baseLocalDataService;

  GetAllSavedItemRepository(this._baseLocalDataService);

  List<SavedItemModel> getAllSavedItems()  {
    return  _baseLocalDataService.getData(dbName: "savedItemDb");
  }
}
