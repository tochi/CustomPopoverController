//
//  ViewController.m
//  PopoverTest
//
//  Created by tochi on 2014/02/01.
//  Copyright (c) 2014年 aguuu.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
  UIPopoverController *_messageBalloonPopoverController;
}
@property (nonatomic, readonly) UIPopoverController *messageBalloonPopoverController;
@end

@implementation ViewController
- (UIPopoverController *)messageBalloonPopoverController
{
  if (_messageBalloonPopoverController == nil) {
    UIViewController *messageBalloonViewController;
    messageBalloonViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MessageBalloonViewController"];
    messageBalloonViewController.view.backgroundColor = [UIColor clearColor];
    _messageBalloonPopoverController = [[UIPopoverController alloc] initWithContentViewController:messageBalloonViewController];
    _messageBalloonPopoverController.backgroundColor = [UIColor clearColor];
  }
  return _messageBalloonPopoverController;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (IBAction)showMessageBalloonButtonTapped:(UIButton *)sender
{
  [self.messageBalloonPopoverController presentPopoverFromRect:sender.frame
                                                        inView:self.view
                                      permittedArrowDirections:UIPopoverArrowDirectionDown
                                                      animated:YES];
}
@end
