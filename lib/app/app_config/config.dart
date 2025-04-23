import 'package:get_it/get_it.dart';

import 'app_config.dart';
import 'app_config_impl.dart';

final getIt = GetIt.instance;

void initConfig() {
  getIt.registerLazySingleton<AppConfig>(() => AppConfigImpl());
}

AppConfig get appConfig => getIt.get();
