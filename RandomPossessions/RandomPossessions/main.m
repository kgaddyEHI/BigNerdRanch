//
//  main.m
//  RandomPossessions
//
//  Created by kgaddy on 3/19/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        BNRContainer *container = [[BNRContainer alloc]init];
        [container setContainerName:@"Grocery List"];
        [container setContainerValueInDollars:300];
        //NSMutableArray *items = [[NSMutableArray alloc]init];
        for(int i=0;i<10; i++)
        {
            BNRItem *p = [BNRItem randomItem];
            [container addSubItem:p];
           // NSLog(@"%@",p);
            //[items addObject:p];
            
        }
        
        
        //for(BNRItem *item in items)
        //{
           // NSLog(@"%@",item);
        //}
        
        //extra credit bronze
        //BNRItem *p = [items objectAtIndex:10];
        //NSLog(@"%@",p);
        
        //extra credit silver
       // BNRItem *s = [[BNRItem alloc]initWithNameAndSerial:@"Kevin Gaddy" serialNumber:@"ASDF"];
        //NSLog(@"%@", s);
        
        //extra credit gold
        
        NSLog(@"%@",container);
        
        
  
            
        //items = nil;
        
    }
    return 0;
}

