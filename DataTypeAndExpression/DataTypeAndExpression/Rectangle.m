//
//  Rectangle.m
//  DataTypeAndExpression
//
//  Created by Mingqiang Chen on 8/12/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle


-(void) setWidth: (int)w
{
    width = w;
}
-(void) setHeight: (int)h
{
    height = h;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height) * 2;
}

-(int) width
{
    return width;
}
-(int) height
{
    return height;
}

@end
