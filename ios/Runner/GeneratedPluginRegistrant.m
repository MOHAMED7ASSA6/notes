//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<modal_progress_hud_nsn/ModalProgressHudNsnPlugin.h>)
#import <modal_progress_hud_nsn/ModalProgressHudNsnPlugin.h>
#else
@import modal_progress_hud_nsn;
#endif

#if __has_include(<path_provider_foundation/PathProviderPlugin.h>)
#import <path_provider_foundation/PathProviderPlugin.h>
#else
@import path_provider_foundation;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [ModalProgressHudNsnPlugin registerWithRegistrar:[registry registrarForPlugin:@"ModalProgressHudNsnPlugin"]];
  [PathProviderPlugin registerWithRegistrar:[registry registrarForPlugin:@"PathProviderPlugin"]];
}

@end
