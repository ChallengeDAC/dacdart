import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dacdart_method_channel.dart';

abstract class DacdartPlatform extends PlatformInterface {
  /// Constructs a DacdartPlatform.
  DacdartPlatform() : super(token: _token);

  static final Object _token = Object();

  static DacdartPlatform _instance = MethodChannelDacdart();

  /// The default instance of [DacdartPlatform] to use.
  ///
  /// Defaults to [MethodChannelDacdart].
  static DacdartPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DacdartPlatform] when
  /// they register themselves.
  static set instance(DacdartPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
