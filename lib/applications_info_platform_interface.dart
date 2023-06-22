import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'applications_info_method_channel.dart';

abstract class ApplicationsInfoPlatform extends PlatformInterface {
  /// Constructs a ApplicationsInfoPlatform.
  ApplicationsInfoPlatform() : super(token: _token);

  static final Object _token = Object();

  static ApplicationsInfoPlatform _instance = MethodChannelApplicationsInfo();

  /// The default instance of [ApplicationsInfoPlatform] to use.
  ///
  /// Defaults to [MethodChannelApplicationsInfo].
  static ApplicationsInfoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ApplicationsInfoPlatform] when
  /// they register themselves.
  static set instance(ApplicationsInfoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<List<String>?> getInstalledPackages() {
    throw UnimplementedError('installedPackages() has not been implemented.');
  }
}
