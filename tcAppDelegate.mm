#import "tcAppDelegate.h"
#import "tcSceneDelegate.h"

@implementation tcAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	_mainScene = [[tcSceneDelegate alloc] init];

	return YES;
}

@end
