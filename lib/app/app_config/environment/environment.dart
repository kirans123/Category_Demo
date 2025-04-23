import '/l10n/utils/enum/env_enum.dart';
import '/utils/constants/app_keys.dart';
import '../../../utils/constants/index.dart';

class AppEnvironment {
  static const String env =
      String.fromEnvironment(AppKeys.env, defaultValue: 'prod');
  static const String baseUrl =
      String.fromEnvironment(AppKeys.baseUrl, defaultValue: prodBaseURL);

  static bool isDev = env == Environment.dev.value;
  static bool isStg = env == Environment.stg.value;
  static bool isProd = env == Environment.prod.value;
}
