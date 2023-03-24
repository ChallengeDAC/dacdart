import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dacdart/dacdart_method_channel.dart';

void main() {
  MethodChannelDacdart platform = MethodChannelDacdart();
  const MethodChannel channel = MethodChannel('dacdart');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
