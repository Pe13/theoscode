#import "tcSceneDelegate.h"
#import "tcRootViewController.h"
#import <UIKit/UIKit.h>

@implementation tcSceneDelegate

- (void)scene:(UIScene *)scene
        willConnectToSession:(UISceneSession *)session
                     options:(UISceneConnectionOptions *)connectionOptions {

    UIWindowScene *windowScene =
            [[UIWindowScene alloc] initWithSession:session
                                 connectionOptions:connectionOptions];
    _window = [[UIWindow alloc] initWithWindowScene:windowScene];

    tcRootViewController *splitViewController = [[tcRootViewController alloc]
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