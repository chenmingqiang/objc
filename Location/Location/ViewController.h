//
//  ViewController.h
//  Location
//
//  Created by Mingqiang Chen on 8/24/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *currentLatitudeLabel;

@property (weak, nonatomic) IBOutlet UILabel *currentLongtitudeLabel;

- (IBAction)getCurrentLocation:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *addressLabel;

@end

