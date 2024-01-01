import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.smart-trade-bot.com/api';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> postData({
    required String endPoint,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
  }) async {
    _dio.options.headers = {'Accept': 'application/json'};
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
      '$_baseUrl$endPoint',
      queryParameters: query,
    );
    return response.data;
  }
}
