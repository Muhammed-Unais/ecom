import 'package:ecom/app/saved_items/model/saveditem_model.dart';
import 'package:ecom/data/local_storage/base_local_data_service.dart';

class DeleteSavedItemRepository {
  final BaseLocalDataService<SavedItemModel> _baseLocalDataService;

  DeleteSavedItemRepository(this._baseLocalDataService);

  Future<void> deleteSavedItem(int index) async {
    try {
      await _baseLocalDataService.deleteData(index, dbName: "savedItemDb");
    } catch (e) {
      rethrow;
    }
  }
}
