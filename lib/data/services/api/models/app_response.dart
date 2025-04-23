import 'package:dio/dio.dart';

import '/data/services/logger/utils/map.dart';
import '../../../../utils/constants/app_keys.dart';
import '../../../../utils/constants/constants.dart';

class AppResponse {
  AppResponse();
  int statusCode = kSuccessCode;
  String message = '';
  Map<String, dynamic> payload = const {};

  bool get isSuccess => statusCode == kSuccessCode;

  bool get isFailed => statusCode != kSuccessCode;

  AppResponse.error({
    String? message,
    this.payload = const {},
    error,
    StackTrace? stackTrace,
  }) {
    statusCode = kServerErrorCode;
    this.message = message ?? kServerErrorMessage;
  }

  AppResponse.fromDioResponse(Response response) {
    try {
      Map<String, dynamic> rawData = <String, dynamic>{};
      // if response.data is Map then use it as it is
      // else if it is String or list then
      // create a map with key as payload and value as response.data
      final responseData = response.data;

      // ignore: avoid_dynamic_calls
      final data = responseData[AppKeys.payload];

      if (data is Map<String, dynamic>) {
        rawData = data;
      } else {
        rawData = {
          AppKeys.data: data,
        };
      }

      int responseCode = rawData.getInt(AppKeys.statusCode);

      if (responseCode == 0) {
        responseCode = response.statusCode ?? kServerErrorCode;
      }

      statusCode = responseCode;

      if (responseData is Map<String, dynamic>) {
        message = responseData.getString(AppKeys.message);
      } else {
        message = (statusCode == kSuccessCode
            ? kSuccessMessage
            : kServerErrorMessage);
      }

      payload = rawData;
    } catch (e) {
      statusCode = kServerErrorCode;
      message = kServerErrorMessage;
      payload = const {};
    }
  }
}
