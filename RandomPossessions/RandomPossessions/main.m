//
//  main.m
//  RandomPossessions
//
//  Created by kgaddy on 3/19/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc]init];
        for(int i=0;i<10; i++)
        {
            BNRItem *p = [BNRItem randomItem];
            [items addObject:p];
            
        }
        
        
        
        for(BNRItem *item in items)
        {
            NSLog(@"%@",item);
        }
        
        //extra credit bronze
        //BNRItem *p = [items objectAtIndex:10];
        //NSLog(@"%@",p);
        
        //extra credit silver
        BNRItem *s = [[BNRItem alloc]initWithNameAndSerial:@"Kevin Gaddy" serialNumber:@"ASDF"];
        NSLog(@"%@", s);
        
        
  
            
        items = nil;
        
    }
    return 0;
}

