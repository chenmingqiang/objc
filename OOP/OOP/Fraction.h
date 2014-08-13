//
//  Fraction.h
//  This file define a Object-C class
//  In Objective-C,
//  The keyword for define class is @interface
//  The keyword for implement class is @implementation
//  The definition of class seprate two parts : interface part and implementation part.
//  Generally, the interface part is put in .h header file, and the implementation part is
//  put in .m source file.
//  The interface part is like this.
//////////////////////////////////////////////
//  @interface NewClassName: ParentClassName
//  {
//      memberDeclarations;
//  }
//      methodDeclarations;
//  @end
//////////////////////////////////////////////
//  leading "-" means instance method,
//  leading "+" means class method
//  return value type and augument type are enclosed by "()"


//  Created by Mingqiang Chen on 8/11/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;

@end
