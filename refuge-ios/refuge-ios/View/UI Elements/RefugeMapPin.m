//
//  RefugeMapKitAnnotation.m
//  refuge-ios
//
//  Created by Harlan Kellaway on 2/9/15.
//  Copyright (c) 2015 Refuge Restrooms. All rights reserved.
//

#import "RefugeMapPin.h"

#import <CoreLocation/CoreLocation.h>
#import "RefugeRestroom.h"
#import "NSString+Refuge.h"

static NSString * const kNoName = @"No Name";

@implementation RefugeMapPin

# pragma mark - Initializers

- (id)initWithRestroom:(RefugeRestroom *)restroom
{
    self = [super init];
    
    if (self)
    {
        _restroom = restroom;
        
        if ([restroom.name isEqualToString:@""])
        {
            _title = kNoName;
        }
        else
        {
            _title = [restroom.name prepareForDisplay];
        }
        
        _subtitle = [self addressForRestroom:restroom];
        _coordinate = [self coordinateForRestroom:restroom];
    }
    
    return self;
}

- (id)init
{
    NSAssert(false, @"Use initWitRestroom: to initialize this class.");
    
    return nil;
}

# pragma mark - Private methods

- (NSString *)addressForRestroom:(RefugeRestroom *)restroom
{
    return [NSString stringWithFormat:@"%@, %@, %@", restroom.street, restroom.city, restroom.state];
}

- (CLLocationCoordinate2D)coordinateForRestroom:(RefugeRestroom *)restroom
{
    CLLocationCoordinate2D coordinate;
    coordinate.latitude = [restroom.latitude doubleValue];
    coordinate.longitude = [restroom.longitude doubleValue];
    
    return coordinate;
}

@end
