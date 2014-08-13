// This Program teaches us the following knowlege points
// 1. how to define a class, please refer to Fraction.h and Fraction.m
// 2. how to call instance method: "[instanceObject instanceMethod]"
// 3. how to allocate storage and initialize the instance "[[Class alloc] init]"
// 4. accessor which include setter method and getter method
//  Created by Mingqiang Chen on 8/11/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // allocate and initialize Faction instance
        // [[Fraction alloc] init] is equailent to [Fraction new]
        Fraction *fraction1 = [[Fraction alloc] init];
        Fraction *fraction2 = [[Fraction alloc] init];


        [fraction1 setNumerator: 2];
        [fraction1 setDenominator: 3];
        
        [fraction2 setNumerator: 5];
        [fraction2 setDenominator: 7];
        
        NSLog(@"The first fraction is\n");
        [fraction1 print];
        
        NSLog(@"The second fraction is\n");
        [fraction2 print];

        // we can also display the fraction with getter method
        NSLog(@"The first fraction is : %i/%i", [fraction1 numerator], [fraction1 denominator]);
        NSLog(@"The second fraction is : %i/%i", [fraction2 numerator], [fraction2 denominator]);
        // release method is unavailable in atomic reference mode
        // release the instance
        // [myFraction release];
    }

    return 0;
}
