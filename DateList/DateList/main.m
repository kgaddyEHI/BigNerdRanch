//
//  main.m
//  DateList
//
//  Created by kgaddy on 3/5/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //create 3 nsdate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        //create and array containing all three 9nil terminates the list)
        NSArray *dateList = [NSArray arrayWithObjects:now,tomorrow,yesterday,nil];
        
        NSLog(@"There are %lu dates", [dateList count]);
        
        //print a yesterday
        NSLog(@"Date yesterday is %@",[dateList objectAtIndex:2]);
        
        
        NSUInteger dateCount = [dateList count];
        for(int i =0; i<dateCount; i++){
            NSDate *d = [dateList objectAtIndex:i];
             NSLog(@"Date  is %@",d);
        }
        
        for(NSDate *d in dateList){
           NSLog(@"Date  is %@",d);
        }
        
        
    }
    return 0;
}

