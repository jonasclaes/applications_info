
import 'applications_info_platform_interface.dart';

class ApplicationsInfo {
  Future<String?> getPlatformVersion() {
    return ApplicationsInfoPlatform.instance.getPlatformVersion();
  }

  Future<List<String>?> getInstalledPackages() {
    return ApplicationsInfoPlatform.instance.getInstalledPackages();
  }
}
