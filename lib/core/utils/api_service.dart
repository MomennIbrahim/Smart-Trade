import 'package:dio/dio.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/features/authentication/data/model/user_login_model.dart';

class ApiService {
  final _baseUrl = 'https://www.smart-trade-bot.com/api';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> postData({
    required String endPoint,
    String? token,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
  }) async {
    _dio.options.headers = {
      'Accept': 'application/json',
      'Authorization': token,
    };

    // _dio.interceptors.add(InterceptorsWrapper(
    //   onError: (DioException err, ErrorInterceptorHandler handler)async{
    //     // Check if the error is due to an unauthorized (401) response
    //     if (err.response?.statusCode == 401) {
    //       // Attempt to refresh the token
    //       final newToken =  Constance.accessToken;
    //
    //       if (newToken != null) {
    //         // Retry the original request with the new token
    //         err.requestOptions.headers['Authorization'] = 'Bearer $newToken';
    //         _dio.fetch(err.requestOptions).then((response) {
    //           handler.next(response.data);
    //         });
    //       } else {
    //         // If token refresh fails, proceed with the original error
    //         handler.next(err);
    //       }
    //     } else {
    //       // Continue with the original error for non-401 responses
    //       handler.next(err);
    //     }
    //   }
    // ));

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
    Map<String, dynamic>? query,
  }) async {
    _dio.options.headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
      'lang': 'en',
    };
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
}
