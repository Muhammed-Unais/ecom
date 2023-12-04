import 'package:ecom/app/products_listing/model/products_model.dart';
import 'package:ecom/data/network/base_network_api_service.dart';
import 'package:ecom/res/constants/app_url.dart';

class GetAllProductRepository {
  final BaseNetWorkApiService _baseNetWorkApiService;

  GetAllProductRepository(this._baseNetWorkApiService);

  Future<List<SingleProduct>> getAllProducts(
      Map<String, dynamic> queryParameters) async {
    try {
      final response = await _baseNetWorkApiService.getPostApiResponse(
        AppUrl.getAllProductsApi,
        queryParameters: queryParameters,
      );

      final productModel = productsModelFromJson(response);

      return productModel.products.productsReturn.data;
    } catch (e) {
      rethrow;
    }
  }
}
