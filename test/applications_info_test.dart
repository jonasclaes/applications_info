import 'package:flutter_test/flutter_test.dart';
import 'package:applications_info/applications_info.dart';
import 'package:applications_info/applications_info_platform_interface.dart';
import 'package:applications_info/applications_info_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockApplicationsInfoPlatform
    with MockPlatformInterfaceMixin
    implements ApplicationsInfoPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<List<Map<dynamic, dynamic>>?> getInstalledPackages() => Future.value([
        {'a': 'b'}
      ]);
}

void main() {
  final ApplicationsInfoPlatform initialPlatform =
      ApplicationsInfoPlatform.instance;

  test('$MethodChannelApplicationsInfo is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelApplicationsInfo>());
  });

  test('getPlatformVersion', () async {
    ApplicationsInfo applicationsInfoPlugin = ApplicationsInfo();
    MockApplicationsInfoPlatform fakePlatform = MockApplicationsInfoPlatform();
    ApplicationsInfoPlatform.instance = fakePlatform;

    expect(await applicationsInfoPlugin.getPlatformVersion(), '42');
  });

  test('getInstalledPackages', () async {
    ApplicationsInfo applicationsInfoPlugin = ApplicationsInfo();
    MockApplicationsInfoPlatform fakePlatform = MockApplicationsInfoPlatform();
    ApplicationsInfoPlatform.instance = fakePlatform;

    expect(await applicationsInfoPlugin.getInstalledPackages(), [
      {'a': 'b'}
    ]);
  });
}
