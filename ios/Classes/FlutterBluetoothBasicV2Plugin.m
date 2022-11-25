#import "FlutterBluetoothBasicV2Plugin.h"
#if __has_include(<flutter_bluetooth_basic_v2/flutter_bluetooth_basic_v2-Swift.h>)
#import <flutter_bluetooth_basic_v2/flutter_bluetooth_basic_v2-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_bluetooth_basic_v2-Swift.h"
#endif

@implementation FlutterBluetoothBasicV2Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterBluetoothBasicV2Plugin registerWithRegistrar:registrar];
}
@end
