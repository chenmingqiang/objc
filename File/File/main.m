//
//  This program teach us the knowledge points about file operation
// NSFileManager, NSFileHandle, NSURL, NSBundle
// 1. Create a new file
// 2. Read from an existing file
// 3. Write data to a file
// 4. Rename a file
// 5. Remove (delete) a file
// 6. Test for the existence of a file
// 7. Determine the size of a file as well as other attributes n Make a copy of a file
// 8. Test two files to see whether their contents are equal
// File
//
//  Created by Mingqiang Chen on 8/16/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // NSURL
        NSURL *myURL = [NSURL URLWithString: @"http://www.yahoo.com"];
        NSString *homePage = [NSString stringWithContentsOfURL: myURL encoding: NSASCIIStringEncoding error: NULL];
        NSLog(@"%@", homePage);
        
        NSString *txtFilePath = [[NSBundle mainBundle] pathForResource: @"instructions" ofType: @"txt"];
        
        
        NSString *instructions = [NSString stringWithContentsOfFile: txtFilePath encoding: NSUTF8StringEncoding error: NULL];
        
        NSLog(@"%@", instructions);
        
    }
    return 0;
}
