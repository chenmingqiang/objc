//
//  ToDoItem.m
//  ToDoList
//
//  Created by Mingqiang Chen on 8/20/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import "ToDoItem.h"

@interface ToDoItem ()

@property NSDate *creationDate;

@end

@implementation ToDoItem

-(void)markAsCompleted:(BOOL)isCompleted
{
    self.completed = isCompleted;
    [self setCompletionDate];
}

-(void)setCompletionDate
{
    if (self.completed) {
        self.creationDate = [NSDate date];
    } else {
        self.creationDate = nil;
    }
}
@end
