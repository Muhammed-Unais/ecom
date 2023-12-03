abstract interface class BaseNetWorkApiService {
  Future<dynamic> getGetApiResponse(
    String endPoint, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> getPostApiResponse(
    String endPoint, {
    Object? body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  });
}
