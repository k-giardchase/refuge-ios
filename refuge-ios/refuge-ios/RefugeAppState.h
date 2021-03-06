//
//  RefugeAppState.h
//  refuge-ios
//
//  Created by Harlan Kellaway on 2/5/15.
//  Copyright (c) 2015 Refuge Restrooms. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RefugeAppState : NSObject

@property (nonatomic, strong) NSDate *dateLastSynced;
@property (nonatomic, assign) BOOL hasPreloadedRestrooms;
@property (nonatomic, assign) BOOL hasViewedOnboarding;

- (id)initWithUserDefaults:(NSUserDefaults *)userDefaults;

@end
