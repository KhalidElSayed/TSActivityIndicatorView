//
//  ViewController.h
//  frame-animation
//
//  Created by Tomasz Szulc on 14.08.2013.
//  Copyright (c) 2013 Tomasz Szulc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TSActivityIndicatorView;
@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet TSActivityIndicatorView *indicator;

- (IBAction)start:(id)sender;
- (IBAction)stop:(id)sender;
- (IBAction)hiddenWhenStoppedYES:(id)sender;
- (IBAction)hiddenWhenStoppedNO:(id)sender;

@end
