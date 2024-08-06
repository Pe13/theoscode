#import "tcSceneDelegate.h"
#import "tcRootViewController.h"
#import <UIKit/UIKit.h>

@implementation tcSceneDelegate

- (void)scene:(UIScene *)scene
        willConnectToSession:(UISceneSession *)session
                     options:(UISceneConnectionOptions *)connectionOptions {
    _window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *) scene];

    tcRootViewController* splitViewController = [[tcRootViewController alloc]
            initWithStyle:UISplitViewControllerStyleDoubleColumn];

    UINavigationController *leftViewController = [[UINavigationController alloc]
            initWithRootViewController:[[tcRootViewController alloc] init]];
    UINavigationController *rightViewController = [[UINavigationController alloc]
            initWithRootViewController:[[tcRootViewController alloc] init]];

    splitViewController.viewControllers = @[leftViewController, rightViewController];

    _rootViewController = [[UINavigationController alloc]
            initWithRootViewController:splitViewController];

    _window.rootViewController = _rootViewController;
    [_window makeKeyAndVisible];
}

@end