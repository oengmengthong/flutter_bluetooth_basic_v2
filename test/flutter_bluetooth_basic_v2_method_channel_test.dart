import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bluetooth_basic_v2/flutter_bluetooth_basic_v2_method_channel.dart';

void main() {
  MethodChannelFlutterBluetoothBasicV2 platform = MethodChannelFlutterBluetoothBasicV2();
  const MethodChannel channel = MethodChannel('flutter_bluetooth_basic_v2');

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
