//
//  Complex.h
//  DataTypeAndExpression
//
//  Created by Mingqiang Chen on 8/12/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
{
    double real;
    double imaginary;
}

-(void) setReal: (double) r;
-(void) setImaginary: (double)i;
-(double) real;
-(double) imaginary;
-(void) print;
@end
