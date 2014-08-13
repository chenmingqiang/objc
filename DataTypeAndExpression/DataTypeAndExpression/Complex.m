//
//  Complex.m
//  DataTypeAndExpression
//
//  Created by Mingqiang Chen on 8/12/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import "Complex.h"

@implementation Complex

-(void) setReal: (double) r
{
    real = r;
}
-(void) setImaginary: (double)i
{
    imaginary = i;
}
-(double) real
{
    return real;
}

-(double) imaginary
{
    return imaginary;
}

-(void) print
{
    NSLog(@"%g + %gi", real, imaginary);
}

@end
