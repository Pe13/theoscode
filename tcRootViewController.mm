#import "tcRootViewController.h"
#import <UIKit/UISplitViewController.h>

#import "tcExampleViewController.h"

@implementation tcRootViewController

- (void)loadView {
    [super loadView];

    self.title = @"Root View Controller";

//    [self showColumn:UISplitViewControllerColumnPrimary];
//    [self showColumn:UISplitViewControllerColumnSecondary];
}

@end
