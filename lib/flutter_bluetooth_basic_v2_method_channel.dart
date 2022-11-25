import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_bluetooth_basic_v2_platform_interface.dart';

/// An implementation of [FlutterBluetoothBasicV2Platform] that uses method channels.
class MethodChannelFlutterBluetoothBasicV2 extends FlutterBluetoothBasicV2Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_bluetooth_basic_v2');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
