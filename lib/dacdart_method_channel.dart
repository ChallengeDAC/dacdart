import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dacdart_platform_interface.dart';

/// An implementation of [DacdartPlatform] that uses method channels.
class MethodChannelDacdart extends DacdartPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dacdart');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
