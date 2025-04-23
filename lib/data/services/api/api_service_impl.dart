import 'package:dio/dio.dart';

// import 'package:talker_dio_logger/talker_dio_logger.dart';

import '../../../utils/constants/app_keys.dart';
import '../../../utils/constants/index.dart';
import 'api_service.dart';
import 'models/api_config.dart';
import 'models/app_response.dart';

class ApiServiceImpl implements ApiService {
  late Dio _dio;
  late ApiConfig config;
  String? _token;

  @override
  Dio get dio => _dio;

  @override
  String get token => _token ?? '';

  @override
  String get requestTime => DateTime.now().millisecondsSinceEpoch.toString();

  @override
  Map<String, dynamic> customHeaders({
    required Map<String, dynamic> headers,
    required String bearerToken,
    String? contentType,
  }) =>
      {
        if (bearerToken.isNotEmpty)
          AppKeys.authorization: 'Bearer $bearerToken',
        ...headers,
      };

  @override
  void init({
    required ApiConfig config,
  }) {
    this.config = config;
    _dio = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        receiveTimeout: config.receiveTimeout,
        connectTimeout: config.connectTimeout,
      ),
    );
    _dio.interceptors.addAll(
      [
        /*TalkerDioLogger(
          settings: const TalkerDioLoggerSettings(
            printRequestHeaders: true,
            printResponseHeaders: true,
            printResponseMessage: true,
          ),
        ),*/
      ],
    );
  }

  @override
  void setToken(String token) {
    _token = token;
  }

  @override
  Future<AppResponse> get({
    required String url,
    String? token,
    Map<String, dynamic> queryParams = const {},
    Map<String, dynamic> headers = const {},
    String? contentType,
    bool logResponse = false,
    bool disabledAnalyticsLog = false,
  }) async {
    try {
      final response = await dio.get(
        url,
        queryParameters: queryParams,
        options: Options(
          headers: customHeaders(
            headers: headers,
            bearerToken: token ?? this.token,
            contentType: contentType,
          ),
        ),
      );

      return AppResponse.fromDioResponse(response);
    } on DioException catch (e, s) {
      if (e.type == DioExceptionType.connectionError) {
        return AppResponse.error(message: noInternet);
      } else {
        return AppResponse.error(
          error: e.response?.data,
          stackTrace: s,
        );
      }
    } catch (e, s) {
      return AppResponse.error(
        error: e,
        stackTrace: s,
      );
    }
  }

  @override
  Future<AppResponse> patch({
    required String url,
    String? token,
    Map<String, dynamic> queryParams = const {},
    Map<String, dynamic> headers = const {},
    data,
    String? contentType,
    bool logResponse = false,
    bool disabledAnalyticsLog = false,
  }) async {
    try {
      final response = await dio.patch(
        url,
        queryParameters: queryParams,
        options: Options(
          headers: customHeaders(
            headers: headers,
            bearerToken: token ?? this.token,
            contentType: contentType,
          ),
        ),
        data: data,
      );

      return AppResponse.fromDioResponse(response);
    } on DioException catch (e, s) {
      if (e.type == DioExceptionType.connectionError) {
        return AppResponse.error(message: noInternet);
      } else {
        return AppResponse.error(
          error: e.response?.data,
          stackTrace: s,
        );
      }
    } catch (e, s) {
      return AppResponse.error(
        error: e,
        stackTrace: s,
      );
    }
  }

  @override
  Future<AppResponse> post({
    required String url,
    String? token,
    Map<String, dynamic> queryParams = const {},
    Map<String, dynamic> headers = const {},
    data,
    String? contentType,
    bool logResponse = false,
    bool disabledAnalyticsLog = false,
  }) async {
    try {
      final response = await dio.post(
        url,
        queryParameters: queryParams,
        options: Options(
          headers: customHeaders(
            headers: headers,
            bearerToken: token ?? this.token,
            contentType: contentType,
          ),
        ),
        data: data,
      );

      return AppResponse.fromDioResponse(response);
    } on DioException catch (e, s) {
      if (e.type == DioExceptionType.connectionError) {
        return AppResponse.error(message: noInternet);
      } else {
        var errorResponse = e.response;
        if (errorResponse != null) {
          return AppResponse.fromDioResponse(errorResponse);
        }
        return AppResponse.error(
          error: e,
          stackTrace: s,
        );
      }
    } catch (e, s) {
      return AppResponse.error(
        error: e,
        stackTrace: s,
      );
    }
  }

  @override
  Future<AppResponse> put({
    required String url,
    String? token,
    Map<String, dynamic> queryParams = const {},
    Map<String, dynamic> headers = const {},
    data,
    String? contentType,
    bool logResponse = false,
    bool disabledAnalyticsLog = true,
  }) async {
    try {
      final response = await dio.put(
        url,
        queryParameters: queryParams,
        options: Options(
          headers: customHeaders(
            headers: headers,
            bearerToken: token ?? this.token,
            contentType: contentType,
          ),
        ),
        data: data,
      );

      return AppResponse.fromDioResponse(response);
    } on DioException catch (e, s) {
      if (e.type == DioExceptionType.connectionError) {
        return AppResponse.error(message: noInternet);
      } else {
        return AppResponse.error(
          error: e.response?.data,
          stackTrace: s,
        );
      }
    } catch (e, s) {
      return AppResponse.error(
        error: e,
        stackTrace: s,
      );
    }
  }
}
