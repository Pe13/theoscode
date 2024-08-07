#import "tcAppDelegate.h"
#import "tcSceneDelegate.h"
#import "tcWindowScene.h"

@implementation tcAppDelegate

- (BOOL)application:(UIApplication *)application
        didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // _mainScene = [[tcSceneDelegate alloc] init];

    return YES;
}

- (UISceneConfiguration *)application:(UIApplication *)application
        configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession
                                       options:(UISceneConnectionOptions *)options {
    UISceneConfiguration *configuration = [[UISceneConfiguration alloc] initWithName:@"Theoscode main window" sessionRole:connectingSceneSession.role];
    configuration.sceneClass = tcWindowScene.class;
    configuration.delegateClass = tcSceneDelegate.class;

    return configuration;
}

- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {

}

@end
