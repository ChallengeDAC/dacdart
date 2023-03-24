import 'package:flutter_test/flutter_test.dart';
import 'package:dacdart/dacdart.dart';
import 'package:dacdart/dacdart_platform_interface.dart';
import 'package:dacdart/dacdart_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDacdartPlatform
    with MockPlatformInterfaceMixin
    implements DacdartPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DacdartPlatform initialPlatform = DacdartPlatform.instance;

  test('$MethodChannelDacdart is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDacdart>());
  });

  test('getPlatformVersion', () async {
    Dacdart dacdartPlugin = Dacdart();
    MockDacdartPlatform fakePlatform = MockDacdartPlatform();
    DacdartPlatform.instance = fakePlatform;

    expect(await dacdartPlugin.getPlatformVersion(), '42');
  });
}
