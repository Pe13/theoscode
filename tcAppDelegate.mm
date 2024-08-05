#import "tcAppDelegate.h"
#include <Foundation/NSObjCRuntime.h>
#include <UIKit/UIWindowScene.h>
#include <UIKit/UISceneSession.h>
#import "tcSceneDelegate.h"

@implementation tcAppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // _mainScene = [[tcSceneDelegate alloc] init];

  return YES;
}

- (UISceneConfiguration *)application:(UIApplication *)application
    configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession
    options:(UISceneConnectionOptions *)options {
  UISceneConfiguration * configuration = [[UISceneConfiguration alloc] init];
  configuration.delegateClass = tcSceneDelegate.class;

  return configuration;
}

@end
