import 'package:ecom/app/home/model/home_model.dart';
import 'package:ecom/data/network/base_network_api_service.dart';
import 'package:ecom/res/constants/app_url.dart';

class HomeRespository {
  final BaseNetWorkApiService _baseNetWorkApiService;

  HomeRespository(this._baseNetWorkApiService);

  Future<HomeModel> getHomeCategoryAndBanner() async {
    try {
      final response = await _baseNetWorkApiService.getPostApiResponse(
        AppUrl.homeEndpoint,
      );

      return homeModelFromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
