#import "tcSceneDelegate.h"
#import "tcRootViewController.h"
#import "tcPrimaryViewController.h"
#import "tcSecondaryViewController.h"
#import "tcWindowScene.h"
#import <UIKit/UIKit.h>

@implementation tcSceneDelegate

- (void)scene:(UIScene *)scene
        willConnectToSession:(UISceneSession *)session
                     options:(UISceneConnectionOptions *)connectionOptions {

    tcWindowScene *windowScene =
            [[tcWindowScene alloc] initWithSession:session
                                 connectionOptions:connectionOptions];
    _window = [[UIWindow alloc] initWithWindowScene:windowScene];

    tcRootViewController *splitViewController = [[tcRootViewController alloc]
            initWithStyle:UISplitViewControllerStyleDoubleColumn];

    UINavigationController *leftViewController = [[UINavigationController alloc]
            initWithRootViewController:[[tcPrimaryViewController alloc] init]];
    UINavigationController *rightViewController = [[UINavigationController alloc]
            initWithRootViewController:[[tcSecondaryViewController alloc] init]];

    splitViewController.viewControllers = @[leftViewController, rightViewController];

    _rootViewController = splitViewController;

    _window.rootViewController = _rootViewController;
    [_window makeKeyAndVisible];
}

- (void)sceneWillEnterForeground:(UIScene *)scene {

}

- (void)sceneDidBecomeActive:(UIScene *)scene {

}

- (void)sceneWillResignActive:(UIScene *)scene {

}

- (void)sceneDidEnterBackground:(UIScene *)scene {

}

- (void)sceneDidDisconnect:(UIScene *)scene {

}

@end