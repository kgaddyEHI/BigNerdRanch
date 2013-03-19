//
//  main.m
//  TimeafterTime
//
//  Created by kgaddy on 3/4/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"The new date lives at %p", now);
        //double seconds = [now timeIntervalSince1970];
    
        // insert code here...
        NSLog(@"The date is %@",now);
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit : NSDayCalendarUnit
                                        inUnit : NSMonthCalendarUnit
                                        forDate:now];
        NSLog(@"this day is %lu of the month",day);
        
    }
    return 0;
}

