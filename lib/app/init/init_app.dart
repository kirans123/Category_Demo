import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/constants/index.dart';
import '../my_app.dart';
import '../router/routes.dart';
import '../widget/custom_error_widget.dart';
import 'init_dependencies.dart';

initApp() {
  runZonedGuarded(() async {
    await initDependencies();

    ErrorWidget.builder = (errorDetails) {
      return CustomErrorWidget(
        errorDetails: errorDetails,
        logoAsset: Assets.profileIcon,
        showErrorDetails: false,
        onRestart: (context) {
          const SplashRoute().pushReplacement(context);
        },
      );
    };

    runApp(
      const ProviderScope(child: MyApp()),
    );
  }, (error, stack) {
    // Add better debug log here
    debugPrint('Error: $error');
    // print("Error: $error");
  });
}
