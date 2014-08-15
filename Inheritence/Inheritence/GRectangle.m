//
//  GRectangle.m
//  Inheritence
//
//  Created by Mingqiang Chen on 8/13/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import "GRectangle.h"
#import "XYPoint.h"

@implementation GRectangle

-(void) setOrigin:(XYPoint *)pt
{
    if (!origin) {
        origin = [[XYPoint alloc] init];
    }
    origin.x = pt.x;
    origin.y = pt.y;
}

-(XYPoint*) origin
{
    return origin;
}
@end
