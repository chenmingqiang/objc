//
//  This program teach us the following knowlege points
//  how to loop in objective-c : for, while, do...while
//  (1) for
//  for ( init_expression; loop_condition; loop_expression )
//      program statement
//  (2) while
//  while (loop_condition)
//      program statement
//  (3) do ... while
//  do
//      program statement
//  while ( expression );
//
//  Created by Mingqiang Chen on 8/12/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // compute the square number from 1 to 10
        NSLog(@"Table of Square Number");
        NSLog(@"square number of N");
        NSLog(@"   N         N^2");
        NSLog(@"------------------");
        for (int i = 1; i <= 10; ++i) {
            NSLog(@"  %2i    %i", i, i * i);
        }
        
        // compute the primary number from 2 to p
        
        int p;
        NSLog(@"please input the number:");
        scanf("%i", &p);
        
        bool isPrimary = true;
        for (int i = 2; i <= p; ++i) {
            isPrimary = true;
            for (int j = 2; j <= i / 2; ++j) {
                if (i % j == 0) {
                    isPrimary = false;
                    break;
                }
            }
            if (isPrimary) {
                NSLog(@"%i is a primary", i);
            }
        }
        
        // compute the commond divisor between u and v
        unsigned int u, v, temp;
        
        NSLog (@"Please type in two nonnegative integers.");
        scanf ("%u%u", &u, &v);
        while ( v != 0 ) {
            temp = u % v;
            u = v;
            v = temp;
        }
        NSLog (@"Their greatest common divisor is %u", u);
        
        // reverse digits
        int number, right_digit;
        
        NSLog (@"Enter your number.");
        scanf ("%i", &number);
        do {
            right_digit = number % 10;
            NSLog (@"%i", right_digit);
            number /= 10;
        }
        while ( number != 0 );
    }
    
    return 0;
}