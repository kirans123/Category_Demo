import '../../app/app_config/config.dart';
import '../../l10n/l10n_service.dart';
import '../../l10n/l10n_service_impl.dart';
import '../services/api/index.dart';
import '../services/app_info/app_info_service.dart';
import '../services/app_info/app_info_service_impl.dart';
import '../services/error_handler/error_handler_service.dart';
import '../services/error_handler/error_handler_service_impl.dart';
// import '../services/logger/log_service.dart';
// import '../services/logger/log_service_impl.dart';
import '../services/shared_pref/shared_pref_impl.dart';
import '../services/shared_pref/shared_pref_service.dart';

void initService({bool isProd = true}) {
  getIt.registerLazySingleton<ApiService>(() => ApiServiceImpl());
  getIt.registerLazySingleton<SharedPrefService>(() => SharedPrefImpl());
  getIt.registerLazySingleton<L10nService>(() => L10nServiceImpl());
  getIt.registerLazySingleton<AppInfoService>(
    () => AppInfoServiceImpl(),
  );
  getIt.registerSingleton<ErrorHandlerService>(ErrorHandlerServiceImpl());
  // getIt.registerLazySingleton<LogService>(() => LogServiceImpl(isProd));
}

ApiService get apiService => getIt.get();
SharedPrefService get sharedPrefService => getIt.get();
L10nService get l10nService => getIt.get();
AppInfoService get appInfoService => getIt.get();
ErrorHandlerService get errorHandlerService => getIt.get();
// LogService get logger => getIt.get();
