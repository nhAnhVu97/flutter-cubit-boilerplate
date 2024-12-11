import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioConfig {
  DioConfig({
    required String baseUrl,
    int timeoutInSeconds = 60,
    String contentType = 'application/json',
    List<Interceptor>? interceptors,
  }) {
    _dio = Dio();
    _dio.options.baseUrl = baseUrl;
    _dio.options.connectTimeout = Duration(seconds: timeoutInSeconds);
    _dio.options.contentType = contentType;

    if (interceptors != null && interceptors.isNotEmpty) {
      for (final element in interceptors) {
        _dio.interceptors.add(element);
      }
    }

    if (kDebugMode) {
      // _dio.interceptors.add();
    }
  }

  late Dio _dio;

  Dio get dioInstance => _dio;

  /// To set bearer token to header for all requests
  void setBearerToken(String token) {
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }

  /// To remove bearer token to header for all requests
  void removeBearerToken() {
    _dio.options.headers['Authorization'] = '';
  }

  /// To set custom parameters to header for all requests
  void setHeader(String key, String value) {
    _dio.options.headers[key] = value;
  }
}
