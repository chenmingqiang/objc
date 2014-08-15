//
//  This program teaches us one of the key principles in OOP
//  Inheritence, you can build on existing class definitions and customize them
//  (1) NSObject is the root class, which is similar with Object in JAVA
//  (2) override the method
//  Created by Mingqiang Chen on 8/13/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"
#import "XYPoint.h"
#import "GRectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int width, height;
        NSLog(@"please input the width and height of rectangle");
        scanf("%i%i", &width, &height);
        
        Rectangle *rect = [[Rectangle alloc] init];
        
        [rect setWidth: width];
        [rect setHeight: height];
        NSLog(@"the area of rectange is %i", [rect area]);
        
        [rect draw];
        
        int side;
        NSLog(@"please input the side of square");
        scanf("%i", &side);
        Square *square = [[Square alloc] init];
        [square setSide: side];
        NSLog(@"the area of square is %i", [square area]);
        
        XYPoint* pt = [[XYPoint alloc] init];
        [pt setX: 5 andY: 4];
        GRectangle *gRectangle = [[GRectangle alloc] init];
        [gRectangle setOrigin: pt];
        [gRectangle setWidth: 3 andHeight: 5];
        
        NSLog(@"Origin at (%i, %i)",gRectangle.origin.x, gRectangle.origin.y);
        NSLog (@"Area = %i, Perimeter = %i", [gRectangle area], [gRectangle perimeter]);
    }
    return 0;
}
