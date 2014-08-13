//
//  Fraction.m
//  MoreOOP
//
//  Created by Mingqiang Chen on 8/13/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, dominator;

-(void) print
{
    NSLog(@"%i/%i", numerator, dominator);
}

-(double) convertToNum
{
    if (dominator != 0) {
        return (double)numerator / dominator;
    } else {
        return NAN;
    }
}

-(void) setTo: (int) n Over: (int)d
{
    numerator = n;
    dominator = d;
}

-(void) add: (Fraction *)f
{
    numerator = numerator * f.dominator + dominator * f.numerator;
    dominator = dominator * f.dominator;
}

-(void) reduce
{
    int u = numerator;
    int v = dominator;
    
    while(u != 0) {
        int tmp = v;
        v = u;
        u = tmp % u;
    }
    
    numerator /= v;
    dominator /= v;
}

@end
