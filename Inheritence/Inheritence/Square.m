//
//  Square.m
//  Inheritence
//
//  Created by Mingqiang Chen on 8/13/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void) setSide:(int)s
{
    [self setWidth: s andHeight: s];
}

-(int) side
{
    return width;
}

@end
