import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_bluetooth_basic_v2_method_channel.dart';

abstract class FlutterBluetoothBasicV2Platform extends PlatformInterface {
  /// Constructs a FlutterBluetoothBasicV2Platform.
  FlutterBluetoothBasicV2Platform() : super(token: _token);

  static final Object _token = Object();

  static FlutterBluetoothBasicV2Platform _instance = MethodChannelFlutterBluetoothBasicV2();

  /// The default instance of [FlutterBluetoothBasicV2Platform] to use.
  ///
  /// Defaults to [MethodChannelFlutterBluetoothBasicV2].
  static FlutterBluetoothBasicV2Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterBluetoothBasicV2Platform] when
  /// they register themselves.
  static set instance(FlutterBluetoothBasicV2Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
