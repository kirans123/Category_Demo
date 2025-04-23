import 'app_config.dart';
import 'environment/environment.dart';
import 'models/server_config.dart';

class AppConfigImpl extends AppConfig {
  final ServerConfig _serverConfig = ServerConfig(
    baseUrl: AppEnvironment.baseUrl,
  );
  @override
  ServerConfig get serverConfig => _serverConfig;
}
