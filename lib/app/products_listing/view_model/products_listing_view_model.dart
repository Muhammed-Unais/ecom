import 'package:ecom/app/products_listing/model/products_model.dart';
import 'package:ecom/app/products_listing/repository/products_repository.dart';
import 'package:ecom/data/app_response/app_response.dart';
import 'package:ecom/data/network/network_api_service.dart';
import 'package:flutter/material.dart';

class ProductsListingViewModel extends ChangeNotifier {
  // repositories
  final _getallProductRepo = GetAllProductRepository(NetworkApiService());

  // variables
  int limit = 10;

  List<SingleProduct> _productList = [];

  List<SingleProduct> get productList => _productList;

  int lastPage = 0;

  int currentPage = 1;

  bool isLimit = false;

  int totalItem = 0;

  ApiResponse<ProductsModel>? productsApiResponse;

  void setProductApiResponse(ApiResponse<ProductsModel> response) {
    productsApiResponse = response;
    notifyListeners();
  }

  Future<void> getAllProducts({int page = 1}) async {
    setProductApiResponse(ApiResponse.loading());

    final queryParmas = {"page": page.toString()};

    await _getallProductRepo.getAllProductsModel(queryParmas).then((value) {
      _productList = value.products.productsReturn.data;

      lastPage = value.products.productsReturn.lastPage;

      totalItem = value.products.productsReturn.total;

      setProductApiResponse(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setProductApiResponse(
        ApiResponse.error(error.toString()),
      );
    });
  }

  Future<void> getAllProductsPagination({int page = 1}) async {
    final queryParmas = {"page": page.toString()};

    _productList += await _getallProductRepo.getAllProducts(queryParmas);

    notifyListeners();
  }

  Future<List<SingleProduct>> getProductHome({int page = 1}) async {
    return await _getallProductRepo.getAllProducts({"page": page.toString()});
  }

  void scrollMaxChecking(ScrollController controller) {
    if (currentPage == lastPage) {
      isLimit = true;
      notifyListeners();
      return;
    }
    if (controller.position.pixels == controller.position.maxScrollExtent) {
      currentPage++;
      getAllProductsPagination(page: currentPage);
    }
  }
}
