#import "tcAppDelegate.h"
#include <Foundation/NSObjCRuntime.h>
#include <UIKit/UIWindowScene.h>
#include <UIKit/UISceneSession.h>
#import "tcSceneDelegate.h"

@implementation tcAppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  _mainScene = [[tcSceneDelegate alloc] init];

  return YES;
}

- (UISceneConfiguration *)application:(UIApplication *)application
    configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession
    options:(UISceneConnectionOptions *)options {

  UISceneConfiguration * out = [[UISceneConfiguration alloc] init];

  out.sceneClass = NSClassFromString(@"UIWindowScene");
  out.delegateClass = NSClassFromString(@"tcSceneDelegate");

  return out;
}

@end
