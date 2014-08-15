//
//  XYPoint.h
//  Inheritence
//
//  Created by Mingqiang Chen on 8/13/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject
{
    int x;
    int y;
}

@property int x, y;

-(void) setX: (int)xVal andY: (int)yVal;
@end
