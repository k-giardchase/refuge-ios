//
//  TodayViewController.m
//  Today Widget
//
//  Created by Harlan Kellaway on 3/8/15.
//  Copyright (c) 2015 Refuge Restrooms. All rights reserved.
//

#import "RefugeTodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

static CGFloat const kMarginSize = 10.0;

@interface RefugeTodayViewController () <NCWidgetProviding>

@end

@implementation RefugeTodayViewController

#pragma mark - View life-cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - Protocol conformance

#pragma mark NCWidget Providing

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

- (UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)defaultMarginInsets
{
    defaultMarginInsets.bottom = kMarginSize;
    return defaultMarginInsets;
}

@end
