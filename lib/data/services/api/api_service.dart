import 'package:dio/dio.dart';

import 'models/api_config.dart';
import 'models/app_response.dart';

abstract class ApiService {
  String get token;

  String get requestTime;

  Dio get dio;

  Map<String, dynamic> customHeaders({
    required Map<String, dynamic> headers,
    required String bearerToken,
    String? contentType,
  });

  void init({
    required ApiConfig config,
  });

  void setToken(String token);

  Future<AppResponse> get({
    required String url,
    String? token,
    Map<String, dynamic> queryParams,
    Map<String, dynamic> headers,
    String? contentType,
    bool disabledAnalyticsLog,
    bool logResponse = false,
  });

  Future<AppResponse> post({
    required String url,
    String? token,
    Map<String, dynamic> queryParams,
    Map<String, dynamic> headers,
    data,
    String? contentType,
    bool disabledAnalyticsLog,
    bool logResponse = false,
  });

  Future<AppResponse> put({
    required String url,
    String? token,
    Map<String, dynamic> queryParams,
    Map<String, dynamic> headers,
    data,
    String? contentType,
    bool disabledAnalyticsLog,
    bool logResponse = false,
  });

  Future<AppResponse> patch({
    required String url,
    String? token,
    Map<String, dynamic> queryParams,
    Map<String, dynamic> headers,
    data,
    String? contentType,
    bool disabledAnalyticsLog,
    bool logResponse = false,
  });
}
