// coverage:ignore-file
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'error_handler_service.dart';

class ErrorHandlerServiceImpl implements ErrorHandlerService {
  @override
  Future<void> recordError(
    error,
    StackTrace stackTrace, {
    context,
  }) async {
    var errorTitle = '';

    if (error is PlatformException) {
      errorTitle = error.code;
    }
    debugPrint(
        'ErrorHandlerService[${error.runtimeType}][$context] $errorTitle $error $stackTrace ');

    if (!kIsWeb) {
      FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
      FirebaseCrashlytics.instance.recordError(error, stackTrace);
      FlutterError.onError = (errorDetails) {
        FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
      };
      // Pass all uncaught asynchronous errors that aren't
      //handled by the Flutter
      //framework to Crashlytics
      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };
    }
  }
}
