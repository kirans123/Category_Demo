import 'package:package_info_plus/package_info_plus.dart';

import 'app_info.dart';
import 'app_info_service.dart';

class AppInfoServiceImpl extends AppInfoService {
  AppInfo _appInfo = const AppInfo();
  @override
  AppInfo get appInfo => _appInfo;

  @override
  Future<void> initPackageInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    _appInfo = AppInfo.fromPackageInfo(packageInfo);
  }
}
