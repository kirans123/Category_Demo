import '/data/services/logger/utils/map.dart';
import '../../../utils/constants/constants.dart';

class ServerConfig {
  String baseUrl;

  ServerConfig({required this.baseUrl});

  factory ServerConfig.prod() {
    return ServerConfig(baseUrl: prodBaseURL);
  }

  factory ServerConfig.stg() {
    return ServerConfig(baseUrl: stagingBaseURL);
  }

  factory ServerConfig.dev() {
    return ServerConfig(baseUrl: devBaseURL);
  }

  Map<String, dynamic> toJson() {
    return {
      'baseUrl': baseUrl,
    };
  }

  @override
  String toString() {
    return 'ServerConfig : ${toJson().toPretty()}';
  }
}
