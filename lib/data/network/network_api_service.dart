import 'dart:convert';
import 'dart:io';
import 'package:ecom/data/app_exception.dart';
import 'package:ecom/data/network/base_network_api_service.dart';
import 'package:ecom/res/constants/app_url.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class NetworkApiService implements BaseNetWorkApiService {
  @override
  Future<dynamic> getGetApiResponse(
    String endPoint, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var uri = Uri.http(AppUrl.tempbaseUrl, endPoint, queryParameters);

      Response? response = await http.get(
        uri,
        headers: _mergedheaders(headers),
      );

      return returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
  }

  @override
  Future<dynamic> getPostApiResponse(
    String endPoint, {
    Object? body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var uri = Uri.http(AppUrl.baseUrl, endPoint, queryParameters);

      Response? response = await http.post(
        uri,
        body: body,
        headers: _mergedheaders(headers),
      );

      return returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
  }

  final Map<String, String> _defaultHeaders = {
    'Content-Type': 'application/json',
  };

  Map<String, String> _mergedheaders(
    Map<String, String>? headers,
  ) =>
      {..._defaultHeaders, ...?headers};

  dynamic returnResponse(Response? response) {
    if (response != null) {
      String? message;

      final responsebody = jsonDecode(response.body);

      if (responsebody.runtimeType == Map<String, dynamic>) {
        var body = responsebody as Map<String, dynamic>;
        if (body.containsKey("message")) {
          message = body["message"];
        }
      }

      switch (response.statusCode) {
        case 200:
          return response.body;
        case 400:
          throw BadRequestException(message);
        case 401:
          throw UnauthorisedException(message);
        case 404:
          throw InavalidInputException(message);
        case 403:
          throw UnauthorisedException(message);
        case 500:
          throw FetchDataException(
            'Something went wrong',
          );
        default:
          throw FetchDataException(message);
      }
    }
  }
}
