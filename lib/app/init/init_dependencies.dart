import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../../data/init/init_repo.dart';
import '../../data/init/init_service.dart';
import '../../data/services/api/models/api_config.dart';
import '../app_config/config.dart';
import '../app_config/firebase/firebase_options_dev.dart' as dev_options;
import '../app_config/firebase/firebase_options_prod.dart' as prod_options;
import '../app_config/firebase/firebase_options_stg.dart' as stg_options;

Future<void> initDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  initConfig();
  late FirebaseOptions options;
  if (appConfig.isDev) {
    options = dev_options.DefaultFirebaseOptions.currentPlatform;
  } else if (appConfig.isStg) {
    options = stg_options.DefaultFirebaseOptions.currentPlatform;
  } else {
    options = prod_options.DefaultFirebaseOptions.currentPlatform;
  }

  await Firebase.initializeApp(
    options: options,
  );
  initService(isProd: appConfig.isProd);
  apiService.init(config: ApiConfig(baseUrl: appConfig.serverConfig.baseUrl));

  initRepo();

  await sharedPrefService.init();
  await appInfoService.initPackageInfo();

  errorHandlerService.recordError;
}
