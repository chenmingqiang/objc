//
//  This program teach us the following knowledge points.
//  1. four basic data type : int, float, double, char
//  2. each time has its range. for example, int can be 32bit/64bit, depends its compiling mode
//  3. float can be expressed in two ways. eg, 1.0, 1.2e3
//  4. how to display these four basic type
//  5. id type which can be any type
//  6. arithmetic
//  7. type case, which is often used to cast the id data type
//
//  Created by Mingqiang Chen on 8/12/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // four basic data type : int, float, double, char
        int ival = 10;
        float fval = 10.0;
        double dval = 10.0;
        char cval = 'c';
        
        NSLog(@"this is an integer %i", ival);
        NSLog(@"this is a float %f", fval);
        NSLog(@"this is a double %e", dval); // scientific notation
        NSLog(@"this is also a double %g", dval);
        NSLog(@"this is a character %c", cval);
        
        // data type qualifier: long, long long, short, unsigned
        // the meaning of them is the same as in C language
                
        int a = 10;
        int b = 3;
        double d = 2.1334;
        float f = 3.0;
        
        NSLog(@"a + a / b + a %% b - a * b = %i", a + a /b + a % b - a * b);
        NSLog(@"a + d - f = %g", a + d -f);
        
        Rectangle *rect = [[Rectangle alloc] init];
        
        [rect setWidth: 5];
        [rect setHeight: 6];
        
        NSLog(@"the area and perimeter of rectangle with widith = %i, heigh = %i is %i and %i",
              [rect width], [rect height], [rect area], [rect perimeter]);
        
        
        Complex *complex = [[Complex alloc] init];
        [complex setReal: 2.0];
        [complex setImaginary: 3];
        [complex print];
    }
    return 0;
}
