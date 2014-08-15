//
//  Rectangle.m
//  Inheritence
//
//  Created by Mingqiang Chen on 8/13/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;

-(void) setWidth: (int)w andHeight: (int)h
{
    self.width = w;
    self.height = h;
}

-(int) area
{
    return height * width;
}

-(int) perimeter
{
    return (height + width) << 1;
}

-(void) draw
{
    for (int i = 0; i < width; ++i) {
        printf("-");
    }
    printf("\n");
    for (int i = 0; i < height; ++i) {
        printf("|");
        for (int j = 0; j < width - 2; ++j) {
            printf(" ");
        }
        printf("|\n");
    }
    for (int i = 0; i < width; ++i) {
        printf("-");
    }
    printf("\n");
}

@end
