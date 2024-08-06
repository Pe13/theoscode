#import "tcSceneDelegate.h"
#import "tcRootViewController.h"
#import <UIKit/UIKit.h>

@implementation tcSceneDelegate

- (void)scene:(UIScene *)scene
        willConnectToSession:(UISceneSession *)session
                     options:(UISceneConnectionOptions *)connectionOptions {
    _window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *) scene];
    _rootViewController = [[UINavigationController alloc]
            initWithRootViewController:
                    [[tcRootViewController alloc]
                            initWithStyle:UISplitViewControllerStyleDoubleColumn]];
    _window.rootViewController = _rootViewController;
    [_window makeKeyAndVisible];
}

@end