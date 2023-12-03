import 'dart:developer';
import 'package:ecom/app/home/model/home_model.dart';
import 'package:ecom/app/home/repository/home_repository.dart';
import 'package:ecom/data/app_response/app_response.dart';
import 'package:ecom/data/network/network_api_service.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  // Repositories
  final _homeRepo = HomeRespository(NetworkApiService());

  // Api Resposne
  ApiResponse<HomeModel>? homeApiResponse;

  void setHomeApiResponse(ApiResponse<HomeModel> response) {
    homeApiResponse = response;
    notifyListeners();
  }

  // Api calls
  Future<void> getHomeDetails() async {
    setHomeApiResponse(ApiResponse.loading());
    _homeRepo.getHomeCategoryAndBanner().then((value) {
      setHomeApiResponse(ApiResponse.completed(value));

      log(value.toString());
    }).onError((error, stackTrace) {
      setHomeApiResponse(ApiResponse.error(error.toString()));
      log(error.toString());
    });
  }
}
