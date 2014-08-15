//
//  This program teaches the concept polymorphism, dynamic typing, and dynamic binding
//  1. in objective-c, the dynamic bind is implemented by id type, not the reference/pointer of base class
//  2. instead of using id type, we can use some method which is similar with the reflection function in java
//  Table 9.1 Methods for Working with Dynamic Types
//   -----------------------------------------------------------------------------------------------------------------
//   Method                                           | Question or Action
//   -(BOOL) isKindOfClass: class-object              | Is the object a member of class-object or a descendant?
//   -(BOOL) isMemberOfClass: class-object            | Is the object a member of class-object?
//   -(BOOL) respondsToSelector: selector             | Can the object respond to the method selector specified by selector?
//   +(BOOL) instancesRespondToSelector: selector     | Can instances of the specified class respond selector to selector?
//   +(BOOL)isSubclassOfClass: class-object           | Is the object a subclass of the specified class-object class?
//   -(id) performSelector: selector                  | Apply the method specified by selector.
//   -(id) performSelector: selector                  |Apply the method specified by selector,passing the argument object.
//            withObject: object                      |
//   -(id) performSelector: selector                  |Apply the method specified by selector with the arg obj1 and obj2.
//            withObject: object1 withObject: object2 |

//  3. exception handling: @try  @catch  @finally
//  ------------------------------------------------------------------------------------------------------------------------
//  PolymorphismDynamicTypingAndDynamicBinding
//
//  Created by Mingqiang Chen on 8/13/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *rect = [[Rectangle alloc] init];
        Square *square = [[Square alloc] init];
        
        if ([square isMemberOfClass: [Rectangle class]] == YES) {
            NSLog(@"square is a member of Rectangle class ");
        }
        
        if ([square isMemberOfClass: [Square class]] == YES) {
            NSLog(@"square is a member of Square class ");
        }
        
        if ([square isMemberOfClass: [NSObject class]] == YES) {
            NSLog(@"square is a member of NSObject class");
        }
    
        if ([square isKindOfClass: [Rectangle class]]== YES) {
            NSLog(@"square is a kind of Rectangle class ");
        }
        
        if ([square isKindOfClass: [Square class]] == YES) {
            NSLog(@"square is a kind of Square class");
        }
        
        if ([square isKindOfClass: [NSObject class]] == YES) {
            NSLog(@"square is a kind of NSObject class");
        }

        SEL action = @selector(side);
        
        if ([square respondsToSelector: @selector (setSide:)] == YES) {
            NSLog(@"square responds to setSide: method");
        }
        
        if ([rect respondsToSelector: action] == YES) {
            NSLog(@"rect responds to side: method");
        }
        
        if ([square respondsToSelector: @selector (setWidth:andHeight:)] == YES) {
            NSLog (@"square responds to setWidth:andHeight: method");
        }
        
        if ([Square respondsToSelector: @selector (alloc)] == YES ) {
            NSLog (@"Square class responds to alloc method");
        }
        
        // instancesRespondTo:
        if ([Rectangle instancesRespondToSelector: @selector (setSide:)] == YES) {
            NSLog (@"Instances of Rectangle respond to setSide: method");
        }
        
        if ([Square instancesRespondToSelector: @selector (setSide:)] == YES) {
            NSLog (@"Instances of Square respond to setSide: method");
        }
        
        if ([Square isSubclassOfClass: [Rectangle class]] == YES) {
            NSLog (@"Square is a subclass of a rectangle");
        }
        
        /*
        @try {
            [rect setSide: 5];
        } @catch (NSException *exception) {
            NSLog(@"Caught %@%@", [exception name], [exception reason]);
        } @finally {
            
        }
        */
    }
    return 0;
}
