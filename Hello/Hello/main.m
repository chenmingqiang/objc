//
//  This is the first objective-c program, which is like the
//  "hello world" program introduced in most language book.
//  In this program, we can study the following knowlege.
//  1. import/include the system file with #import
//  2. main function is the entry point of program
//  3. NSLog function which can print the log
//  4. NSString  @"this is a NSString object";
//  5. Integer Variable
//  6. compile the program with gcc.
//  gcc -framework Foundation main.m -o hello
//
//  Created by Mingqiang Chen on 8/11/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSAutoreleasePool is depreated
        // NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
        NSLog(@"programming is fun!");
        NSLog(@"programming in Objective-C is even more fun!");
        
        //
        NSLog(@"Testing\n.1\n..2\n...3\n....4\n");
        
        int sum, sub, value1, value2;
        
        value1 = 50;
        value2 = 25;
        sum = value1 + value2;
        sub = 25 - 50;
        
        NSLog(@"The sum of 50 and 25 is %i\n", sum);
        NSLog(@"The substract of 25 and 50 is %i\n", sub);
        
        // exercise
        NSLog(@"In Objective-C, lowercase letters are significant.\nmain is where program execution begins.\nOpen and closed braces enclose program statements in a routine.\nAll program statements must be terminated by a semicolon.\n");
        
        // [pool drain];
    }
    return 0;
}