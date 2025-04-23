import '/data/services/app_info/app_info.dart';

abstract class AppInfoService {
  AppInfo get appInfo;
  Future<void> initPackageInfo();
}
