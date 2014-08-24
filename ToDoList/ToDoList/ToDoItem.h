//
//  ToDoItem.h
//  ToDoList
//
//  Created by Mingqiang Chen on 8/20/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;

-(void)markAsCompleted:(BOOL)isCompleted;

@end
