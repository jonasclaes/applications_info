import 'package:applications_info/model/package.dart';

import 'applications_info_platform_interface.dart';

class ApplicationsInfo {
  Future<String?> getPlatformVersion() {
    return ApplicationsInfoPlatform.instance.getPlatformVersion();
  }

  Future<List<Package>?> getInstalledPackages() async {
    var platformPackages =
        await ApplicationsInfoPlatform.instance.getInstalledPackages();

    var packages =
        platformPackages?.map((package) => Package.fromPlatform(package));

    return packages == null ? null : List<Package>.of(packages);
  }
}
