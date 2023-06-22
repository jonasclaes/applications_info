import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'applications_info_platform_interface.dart';

/// An implementation of [ApplicationsInfoPlatform] that uses method channels.
class MethodChannelApplicationsInfo extends ApplicationsInfoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('jonasclaes.be/applications_info');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<List<Map<dynamic, dynamic>>?> getInstalledPackages() async {
    final packages = await methodChannel.invokeListMethod('getInstalledPackages');
    return packages == null ? null : List<Map<dynamic, dynamic>>.from(packages);
  }
}
