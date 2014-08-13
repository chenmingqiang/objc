//
//  Rectangle.h
//  DataTypeAndExpression
//
//  Created by Mingqiang Chen on 8/12/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
{
    int width;
    int height;
}

-(void) setWidth: (int)w;
-(void) setHeight: (int)h;
-(int) area;
-(int) perimeter;
-(int) width;
-(int) height;
@end
