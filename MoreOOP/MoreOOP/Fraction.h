//
//  Fraction.h
//  MoreOOP
//
//  Created by Mingqiang Chen on 8/13/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    int numerator;
    int dominator;
}

@property int numerator, dominator;

-(void) print;
-(double) convertToNum;
-(void) setTo: (int) numerator Over: (int)dominator;

-(void) add: (Fraction *)f;

-(void) reduce;

@end
