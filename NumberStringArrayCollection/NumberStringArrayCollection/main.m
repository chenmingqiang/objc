//
//  This program teach us the knowledge points about data types defined in foundation framework
//  such as NSNumber, NSString,
//  NSNumber :
//  method :
//  numberWithInteger      create and initialize
//  initWithInteger        initialize
//  NumberStringArrayCollection
//
//  Created by Mingqiang Chen on 8/16/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSNumber
        NSNumber *intNumber, *longNumber, *floatNumber, *charNumber, *doubleNumber, *boolNumber;
        
        intNumber = [NSNumber numberWithInteger: 100];
        NSLog(@"integer number %i", [intNumber intValue]);
        
        longNumber = [NSNumber numberWithLong: 100000000];
        NSLog(@"long number %li", (long)[longNumber integerValue]);
        
        floatNumber = [NSNumber numberWithFloat: 100.00];
        NSLog(@"float number %g", [floatNumber floatValue]);
        
        charNumber = [NSNumber numberWithChar: 'X'];
        NSLog(@"char number %c", [charNumber charValue]);
        
        doubleNumber = [NSNumber numberWithDouble: 10.0e30];
        NSLog(@"double number %g", [doubleNumber doubleValue]);
        
        boolNumber = [NSNumber numberWithBool: YES];
        NSLog(@"bool number %i", [boolNumber boolValue]);
        //if ([intNumber ])
        
        // number compare
        if ([intNumber isEqualToNumber: floatNumber]) {
            NSLog(@"%@ == %@", intNumber, floatNumber);
        }
        
        if ([intNumber compare: longNumber] == NSOrderedAscending) {
            NSLog(@"First number is less than second");
        } else if ([intNumber compare: longNumber] == NSOrderedDescending) {
            NSLog(@"First number is larger than second");
        } else {
            NSLog(@"First number is equal to second");
        }
        
        // if object can be output as string, its class must override the description method
        NSLog(@"integer number can be expressed to string %@", intNumber);
        
        // NSString
        NSString *str1 = @"This is string A";
        NSString *str2 = @"This is string B";
        NSString *res;
        NSComparisonResult compareResult;
        // Count the number of characters
        NSLog (@"Length of str1: %lu", [str1 length]);
        // Copy one string to another
        res = [NSString stringWithString: str1];
        NSLog (@"copy: %@", res);
        str2 = [str1 stringByAppendingString: str2];
        NSLog (@"Concatentation: %@", str2);
        
        if ([str1 isEqualToString: res] == YES)
            NSLog (@"str1 == res");
        else
            NSLog (@"str1 != res");
        
        // Test if one string is <, == or > than another
        compareResult = [str1 compare: str2];
        if (compareResult == NSOrderedAscending)
            NSLog(@"str1 < str2");
        else if (compareResult == NSOrderedSame)
            NSLog(@"str1 == str2");
        else // must be NSOrderedDescending
            NSLog(@"str1 > str2");
        
        // Convert a string to uppercase
        res = [str1 uppercaseString];
        NSLog (@"Uppercase conversion: %s", [res UTF8String]);
        // Convert a string to lowercase
        res = [str1 lowercaseString];
        NSLog (@"Lowercase conversion: %@", res);
        NSLog (@"Original string: %@", str1);
        
        // NSArray
        NSArray *monthNames = [NSArray arrayWithObjects: @"January", @"February", @"March", @"April", @"May",
                               @"June", @"July", @"August", @"September", @"October", @"November", @"December", nil ];
        // Now list all the elements in the array
        NSLog (@"Month     Name");
        NSLog (@"=====     ====");
        int i;
        for (i = 0; i < 12; ++i) {
            NSLog(@"%2i     %@", i + 1, [monthNames objectAtIndex: i]);
        }
    }

    return 0;
}
