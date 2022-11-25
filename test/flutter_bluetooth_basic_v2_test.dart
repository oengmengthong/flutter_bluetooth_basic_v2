import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bluetooth_basic_v2/flutter_bluetooth_basic_v2.dart';
import 'package:flutter_bluetooth_basic_v2/flutter_bluetooth_basic_v2_platform_interface.dart';
import 'package:flutter_bluetooth_basic_v2/flutter_bluetooth_basic_v2_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterBluetoothBasicV2Platform
    with MockPlatformInterfaceMixin
    implements FlutterBluetoothBasicV2Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterBluetoothBasicV2Platform initialPlatform = FlutterBluetoothBasicV2Platform.instance;

  test('$MethodChannelFlutterBluetoothBasicV2 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterBluetoothBasicV2>());
  });

  test('getPlatformVersion', () async {
    FlutterBluetoothBasicV2 flutterBluetoothBasicV2Plugin = FlutterBluetoothBasicV2();
    MockFlutterBluetoothBasicV2Platform fakePlatform = MockFlutterBluetoothBasicV2Platform();
    FlutterBluetoothBasicV2Platform.instance = fakePlatform;

    expect(await flutterBluetoothBasicV2Plugin.getPlatformVersion(), '42');
  });
}
