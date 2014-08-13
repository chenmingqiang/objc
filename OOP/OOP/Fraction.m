//
//  This file is the implementation part of class
//  The syntax is
//  @implementation NewClassName
//    methodDefinitions;
//  @end
//
//  Created by Mingqiang Chen on 8/11/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import "Fraction.h"

// @implementation Fraction : NSObject is also ok,
// but we are usually omiting the parent class
@implementation Fraction

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator:(int)n
{
    numerator = n;
}

-(void) setDenominator:(int)d
{
    denominator = d;
}

-(int) numerator
{
    return numerator;
}

-(int) denominator
{
    return denominator;
}

@end
