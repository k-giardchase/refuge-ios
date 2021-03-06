//
//  RefugeMapViewController.h
//  refuge-ios
//
//  Created by Harlan Kellaway on 2/4/15.
//  Copyright (c) 2015 Refuge Restrooms. All rights reserved.
//

#import <MapKit/MapKit.h>

#import "RefugeMapDelegate.h"
#import "RefugeRestroomManagerDelegate.h"

@interface RefugeMapViewController : UIViewController <CLLocationManagerDelegate, RefugeMapDelegate, RefugeRestroomManagerDelegate, UISearchBarDelegate, UITableViewDataSource, UITableViewDelegate>


@end

