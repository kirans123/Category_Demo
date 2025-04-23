import 'environment/environment.dart';
import 'models/server_config.dart';

abstract class AppConfig {
  ServerConfig get serverConfig;
  String env = AppEnvironment.env;
  bool isDev = AppEnvironment.isDev;
  bool isStg = AppEnvironment.isStg;
  bool isProd = AppEnvironment.isProd;
}
