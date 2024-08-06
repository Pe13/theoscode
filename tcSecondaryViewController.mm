#import "tcSecondaryViewController.h"
#import <CoreGraphics/CGGeometry.h>

@implementation tcSecondaryViewController

- (void)loadView {
    [super loadView];

    self.title = @"Secondary View Controller";

    _textView = [[UITextView alloc] initWithFrame:{} textContainer:nil];
    _textView.text = @"Hello world";

    self.view = _textView;
}

@end
