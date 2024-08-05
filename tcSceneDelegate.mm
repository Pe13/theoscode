#import "tcSceneDelegate.h"
#include <UIKit/UIKit.h>
#import "tcRootViewController.h"

@implementation tcSceneDelegate

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    _window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene*)scene];
	_rootViewController = [[UISplitViewController alloc] initWithStyle:UISplitViewControllerStyleDoubleColumn];
	_window.rootViewController = _rootViewController;
	[_window makeKeyAndVisible];
}

@end