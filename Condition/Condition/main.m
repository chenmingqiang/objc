//
//  This program teaches us the following knowledge points
//  conditional statement
//  1. if statement
//  if ( expression )
//       program statement
//  2. swith statement
//  switch (expression)
//    case value1 :
//        program statements
//        break;
//    case value2 :
//        program statements
//        break;
//    default :
//        program statements
//        break;
//   3. boolean type
//   BOOL  (YES, NO)
//
//  Created by Mingqiang Chen on 8/12/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        int a, b;
        NSLog(@"please input two integers");
        scanf("%i%i", &a,&b);
        
        if (b != 0) {
            NSLog(@"a/b = %g", (double)a / b);
        } else {
            NSLog(@"a/b = NAN");
        }
        
        // compound condition
        int year;
        NSLog (@"Enter the year to be tested: ");
        scanf ("%i", &year);
        
        if ( (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 )
            NSLog (@"It's a leap year.");
        else
            NSLog (@"Nope, it's not a leap year.");
        
        BOOL isEven;
        int number;
        NSLog(@"please input the number :");
        scanf("%i", &number);
        
        if (number % 2 == 0) {
            isEven = YES;
        } else {
            isEven = NO;
        }
    }
    return 0;
}
