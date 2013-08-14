//
//  ViewController.m
//  frame-animation
//
//  Created by Tomasz Szulc on 14.08.2013.
//  Copyright (c) 2013 Tomasz Szulc. All rights reserved.
//

#import "ViewController.h"
#import "TSActivityIndicatorView.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    /// Init indicator
    TSActivityIndicatorView *customIndicator =
    [[TSActivityIndicatorView alloc]
     initWithFrame:CGRectMake(160-17, 100, 35, 35)];
    
    /// Add frames as strings
    customIndicator.frames = @[@"activity-indicator-1",
                               @"activity-indicator-2",
                               @"activity-indicator-3",
                               @"activity-indicator-4",
                               @"activity-indicator-5",
                               @"activity-indicator-6"];
    
    /// Add to subview
    [self.view addSubview:customIndicator];
    
    /// And start animate
    customIndicator.duration = 0.5f;
    [customIndicator startAnimating];
    
    
    /// simple after delay block
    double delayInSeconds = 2.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        
        /// hidesWhenStopped is default set to YES. We don't want to hide indicator after stop.
        customIndicator.hidesWhenStopped = NO;
        
        /// And stop.
        [customIndicator stopAnimating];
        /// Is still on screen.
    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)start:(id)sender
{
    [_indicator startAnimating];
}

- (IBAction)stop:(id)sender
{
    [_indicator stopAnimating];
}

- (IBAction)hiddenWhenStoppedYES:(id)sender
{
    _indicator.hidesWhenStopped = YES;
}

- (IBAction)hiddenWhenStoppedNO:(id)sender
{
    _indicator.hidesWhenStopped = NO;
}

@end
