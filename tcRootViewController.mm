#import "tcRootViewController.h"
#include <UIKit/UISplitViewController.h>

#import "tcExampleViewController.h"

@implementation tcRootViewController

- (void)loadView {
  [super loadView];

  self.title = @"Root View Controller";

  UINavigationController *leftViewController = [[UINavigationController alloc]
      initWithRootViewController:[[tcRootViewController alloc] init]];
  UINavigationController *rightViewController = [[UINavigationController alloc]
      initWithRootViewController:[[tcRootViewController alloc] init]];

  [self setViewController:(UIViewController *)leftViewController
                forColumn:UISplitViewControllerColumnPrimary];
  [self setViewController:(UIViewController *)rightViewController
                forColumn:UISplitViewControllerColumnSecondary];
	
  [self showColumn:UISplitViewControllerColumnPrimary];
  [self showColumn:UISplitViewControllerColumnSecondary];
}

@end
