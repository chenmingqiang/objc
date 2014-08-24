//
//  ViewController.m
//  Location
//
//  Created by Mingqiang Chen on 8/24/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    CLLocationManager *locationManager;
    CLGeocoder *geocoder;
    CLPlacemark *placemark;
}

@synthesize currentLatitudeLabel = _currentLatitudeLabel, currentLongtitudeLabel = _currentLongtitudeLabel, addressLabel = _addressLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    locationManager = [[CLLocationManager alloc] init];
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    locationManager.delegate = self;
    
    geocoder = [[CLGeocoder alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark CLLocationManagerDelegate
-(void)locationManager:(CLLocationManager *)manager
   didUpdateToLocation:(CLLocation *)newLocation
          fromLocation:(CLLocation *)oldLocation
{
    if (newLocation != nil) {
        NSString *currentLatitude = [[NSString alloc]
                                     initWithFormat:@"%+.6f",
                                     newLocation.coordinate.latitude];
        _currentLatitudeLabel.text = currentLatitude;
        [_currentLatitudeLabel reloadInputViews];
        
        NSString *currentLongitude = [[NSString alloc]
                                      initWithFormat:@"%+.6f",
                                      newLocation.coordinate.longitude];
        _currentLongtitudeLabel.text = currentLongitude;
        [_currentLongtitudeLabel reloadInputViews];
    }
    
    [locationManager stopUpdatingLocation];
    
    NSLog(@"Resolving the Address");
    
    
    
    [geocoder reverseGeocodeLocation:newLocation completionHandler:^(NSArray *placemarks, NSError *error) {
        
        NSLog(@"Found placemarks: %@, error: %@", placemarks, error);
        
        if (error == nil && [placemarks count] > 0) {
            
            placemark = [placemarks lastObject];
            
            _addressLabel.text = [NSString stringWithFormat:@"%@ %@\n%@ %@\n%@\n%@",
                                 placemark.subThoroughfare, placemark.thoroughfare,
                                 
                                 placemark.postalCode, placemark.locality,
                                 
                                 placemark.administrativeArea,
                                 
                                 placemark.country];
            
            [_addressLabel reloadInputViews];
            
        } else {
            
            NSLog(@"%@", error.debugDescription);
            
        }
        
    } ];
}


-(void)locationManager:(CLLocationManager *)manager
      didFailWithError:(NSError *)error
{
    UIAlertView *errorAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Failed to Get Your Location" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [errorAlert show];
}

- (IBAction)getCurrentLocation:(id)sender {
    [locationManager requestWhenInUseAuthorization];
    [locationManager startUpdatingLocation];
}

@end
