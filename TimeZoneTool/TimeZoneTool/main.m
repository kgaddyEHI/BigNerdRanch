//
//  main.m
//  TimeZoneTool
//
//  Created by kgaddy on 3/5/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //NSTimeZone *tzone = [[NSTimeZone alloc] init];
        NSTimeZone *myZone = [NSTimeZone systemTimeZone];
        
        NSLog(@"Your Timezone:%@", myZone);
        BOOL val  = [myZone isDaylightSavingTime];
        NSLog(@"Daylight Savings?:%d" , val);
        
        NSHost *myComp = [NSHost currentHost];
        NSLog(@"my comp:%@", myComp);
        
        NSString *myStr = [myComp localizedName];
        NSLog(@"my name:%@", myStr);
        
        
    }
    return 0;
}

