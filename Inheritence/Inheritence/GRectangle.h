//
//  GRectangle.h
//  Inheritence
//
//  Created by Mingqiang Chen on 8/13/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

@class XYPoint; // forward declaration

@interface GRectangle : Rectangle
{
    XYPoint *origin; // left up corner
}

@property int width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint*) pt;
@end
