import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../data/init/init_service.dart';
import '../utils/constants/index.dart';
import '../utils/theme/index.dart';
import 'app_config/config.dart';
import 'app_config/environment/environment.dart';
import 'router/router_config.dart';
import 'widget/banner_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BannerWidget(
      show: appConfig.isDev || appConfig.isStg,
      title: '${AppEnvironment.env.toUpperCase()}-'
          '${appInfoService.appInfo.currentAppVersion}',
      child: EasyLocalization(
        supportedLocales: l10nService.supportedLocales,
        path: Assets.l10Path,
        fallbackLocale: l10nService.fallbackLocale,
        saveLocale: true,
        useFallbackTranslations: true,
        child: Builder(
          builder: (context) {
            return MaterialApp.router(
              title: kAppName,
              theme: AppTheme.lightTheme,
              themeMode: ThemeMode.light,
              darkTheme: AppTheme.darkTheme,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: l10nService.currentLocale,
              routerConfig: routerConfig,
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      ),
    );
  }
}
