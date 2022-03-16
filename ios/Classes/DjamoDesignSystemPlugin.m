#import "DjamoDesignSystemPlugin.h"
#if __has_include(<app_ui/app_ui-Swift.h>)
#import <app_ui/app_ui-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "app_ui-Swift.h"
#endif

@implementation DjamoDesignSystemPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDjamoDesignSystemPlugin registerWithRegistrar:registrar];
}
@end
