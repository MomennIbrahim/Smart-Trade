import 'package:dio/dio.dart';
import 'package:task_app/core/constace.dart';

class ApiService {
  final _baseUrl = 'https://www.smart-trade-bot.com/api';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> postData({
    required String endPoint,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
  }) async {
    _dio.options.headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${Constance.accessToken}',
    };

    var response = await _dio.post(
      '$_baseUrl$endPoint',
      queryParameters: query,
      data: data,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> getData({
    required String endPoint,
    required String token,
    Function? onErrorInterceptor,
    Map<String, dynamic>? query,
  }) async {

    // _dio.interceptors
    //     .add(InterceptorsWrapper(onRequest: (options, handler) async {
    //       print(options.data);
    //       print(options.method);
    //   return onRequest(options, handler);
    // }, onError: (DioException err, ErrorInterceptorHandler handler) async {
    //   // Check if the error is due to an unauthorized (401) response
    //   if (err.response?.statusCode == 401 || err.response?.statusCode == 403) {
    //     await refreshToken();
    //     return _retry(err.requestOptions);
    //   }
    // }));

    _dio.options = BaseOptions(headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token}',
      'lang': 'en',
    });
    var response = await _dio.get(
      options: Options(
        followRedirects: true,
        maxRedirects: 5,
      ),
      '$_baseUrl$endPoint',
      queryParameters: query,
    );
    return response.data;
  }

  // void onRequest(
  //     RequestOptions options, RequestInterceptorHandler handler) async {
  //   if (!options.headers.containsKey("Authorization")) {
  //     var token = Constance.accessToken;
  //     options.headers = {
  //       'Accept': 'application/json',
  //       'Authorization': 'Bearer $token',
  //       'lang': 'en',
  //     };
  //   }
  //   handler.next(options);
  // }

  // Future<void> refreshToken() async {
  //   print('----------------- Refresh Token --------------------');
  //   final refreshToken = Constance.accessToken;
  //   final response = await _dio.post(EndPoints.refresh,
  //       options: Options(headers: {
  //         'Authorization': 'Bearer $refreshToken',
  //       }));
  //   if (response.statusCode == 200) {
  //     Constance.accessToken = response.data['access_token'];
  //   }
  // }
  //
  // Future<dynamic> _retry(RequestOptions requestOptions) async {
  //   final options = Options(
  //     method: requestOptions.method,
  //     headers: requestOptions.headers,
  //   );
  //   return _dio.request<dynamic>(requestOptions.path,
  //       data: requestOptions.data,
  //       queryParameters: requestOptions.queryParameters,
  //       options: options);
  // }
}
