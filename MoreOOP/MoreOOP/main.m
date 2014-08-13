//
//  This program teach us the following knowledge points
//  1. @property, @synthesize which helps us generate getter/setter methods
//  2. dot operator
//  instance.property or instance.property = value
//  3. multiple argument, we can omit the later augument name, but it's not a good progrmaming style
//  4. method argument(default pass by value and pass by reference for object argument)
//  5. static variable just initialed once
//  6. self keyword which refer to the object itself, which is similar with the this in Java or C++
//  MoreOOP
//
//  Created by Mingqiang Chen on 8/13/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Fraction *fraction =[[Fraction alloc] init];
        
        [fraction setNumerator: 5];
        [fraction setDominator: 10];
        
        NSLog(@"%i/%i = %g", [fraction numerator], [fraction dominator], [fraction convertToNum]);
        
        [fraction setDominator: 0];
        
        NSLog(@"%i/%i = %g", [fraction numerator], [fraction dominator], [fraction convertToNum]);
        
        [fraction setDominator: 1];
        NSLog(@"%i/%i = %g", fraction.numerator, fraction.dominator, fraction.convertToNum);

        [fraction setTo: 3 Over: 2];
        NSLog(@"%i/%i = %g", fraction.numerator, fraction.dominator, fraction.convertToNum);
        
        Fraction *anotherFraction = [[Fraction alloc] init];
        
        [anotherFraction setTo:1  Over: 2];
        
        int numerator = [fraction numerator];
        int dominator = [fraction dominator];
        
        [fraction add: anotherFraction];
        [fraction reduce];
        NSLog(@"%i/%i + %i/%i = %i/%i", numerator, dominator, anotherFraction.numerator,
              anotherFraction.dominator, fraction.numerator, fraction.dominator);
        
        
        
        
    }
    
    
    return 0;
}
