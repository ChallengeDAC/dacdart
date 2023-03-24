
import 'dacdart_platform_interface.dart';

class Dacdart {
  Future<String?> getPlatformVersion() {
    return DacdartPlatform.instance.getPlatformVersion();
  }
}
