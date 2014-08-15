//
//  Rectangle.h
//  Inheritence
//
//  Created by Mingqiang Chen on 8/13/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
{
    int width;
    int height;
}
@property int width, height;


-(void) setWidth: (int)width andHeight: (int)height;
-(int) area;
-(int) perimeter;
-(void) draw;

@end
