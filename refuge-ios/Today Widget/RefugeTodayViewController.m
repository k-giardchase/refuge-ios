//
//  TodayViewController.m
//  Today Widget
//
//  Created by Harlan Kellaway on 3/8/15.
//  Copyright (c) 2015 Refuge Restrooms. All rights reserved.
//

#import <NotificationCenter/NotificationCenter.h>
#import "RefugeTodayViewController.h"
#import "RefugeRestroom.h"

static CGFloat const kMarginSize = 10.0;

@interface RefugeTodayViewController () <NCWidgetProviding>

@property (weak, nonatomic) NSMutableArray *closestRestrooms;
@property (weak, nonatomic) IBOutlet UILabel *restroomNameLabel;

@end

@implementation RefugeTodayViewController

#pragma mark - View life-cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self updateInterface];
}

#pragma mark - Protocol conformance

#pragma mark NCWidgetProviding

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    
    [self fetchClosestRestrooms];
    
    // If an error is encountered, use NCUpdateResultFailed
    
    // If there's no update required, use NCUpdateResultNoData
    
    
    // If there's an update, use NCUpdateResultNewData
    [self updateInterface];

    completionHandler(NCUpdateResultNewData);
}

- (UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)defaultMarginInsets
{
    defaultMarginInsets.bottom = kMarginSize;
    return defaultMarginInsets;
}

#pragma mark - Helpers

- (void)updateInterface
{
    self.restroomNameLabel.text = @"Test";
}

- (void)fetchClosestRestrooms
{
    RefugeRestroom *restroom1 = [[RefugeRestroom alloc] init];
    restroom1.name = @"Test Restroom 1";
    RefugeRestroom *restroom2 = [[RefugeRestroom alloc] init];
    restroom2.name = @"Test Restroom 2";
    RefugeRestroom *restroom3 = [[RefugeRestroom alloc] init];
    restroom3.name = @"Test Restroom 3";
    
    self.closestRestrooms = [NSMutableArray array];
    [self.closestRestrooms addObject:restroom1];
    [self.closestRestrooms addObject:restroom2];
    [self.closestRestrooms addObject:restroom3];
}

@end
