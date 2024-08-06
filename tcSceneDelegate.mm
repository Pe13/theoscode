#import "tcSceneDelegate.h"
#import "tcRootViewController.h"
#import "tcPrimaryViewController.h"
#import "tcSecondaryViewController.h"
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
            initWithRootViewController:[[tcPrimaryViewController alloc] init]];
    UINavigationController *rightViewController = [[UINavigationController alloc]
            initWithRootViewController:[[tcSecondaryViewController alloc] init]];

    splitViewController.viewControllers = @[leftViewController, rightViewController];

    _rootViewController = [[UINavigationController alloc]
            initWithRootViewController:splitViewController];

    _window.rootViewController = _rootViewController;
    [_window makeKeyAndVisible];
}

@end