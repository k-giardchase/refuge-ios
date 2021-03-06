//
//  RefugeRestroomCommunicatorDelegate.h
//  refuge-ios
//
//  Created by Harlan Kellaway on 2/5/15.
//  Copyright (c) 2015 Refuge Restrooms. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RefugeRestroomCommunicatorDelegate <NSObject>

- (void)didReceiveRestroomsJsonObjects:(id)jsonObjects;
- (void)searchingForRestroomsFailedWithError:(NSError *)error;

@end
