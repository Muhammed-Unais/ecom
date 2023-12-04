import 'package:ecom/app/products_listing/model/products_model.dart';
import 'package:ecom/app/products_listing/repository/products_repository.dart';
import 'package:ecom/data/network/network_api_service.dart';
import 'package:flutter/material.dart';

class ProductsListingViewModel extends ChangeNotifier {
  // repositories
  final _getallProductRepo = GetAllProductRepository(NetworkApiService());

  // variables
  int limit = 10;

  Future<List<SingleProduct>> getAllProducts({int? limit = 10}) async {
    final queryParameters = {"offset": 0.toString(), "limit": limit.toString()};

    return await _getallProductRepo.getAllProducts(queryParameters);
  }
}
