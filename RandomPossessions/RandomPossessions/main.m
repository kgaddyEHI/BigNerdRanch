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
        [container setContainerName:@"Possesion List"];
        [container setContainerValueInDollars:35];
        
        
        BNRItem *backPack = [[BNRItem alloc]init];
        [backPack setItemName:@"Backpack"];
        [backPack setValuesInDollars:30];
        [container addSubItem:backPack];
        
        
        BNRItem *calculator = [[BNRItem alloc]init];
        [calculator setItemName:@"calculator"];
        [calculator setValuesInDollars:11];
        [container addSubItem:calculator];
        
        [backPack setContainedItem:calculator];
         
         
         
        
        //NSMutableArray *items = [[NSMutableArray alloc]init];
        
        /*
        for(int i=0;i<10; i++)
        {
            BNRItem *p = [BNRItem randomItem];
            [container addSubItem:p];
        }
         */
        
        
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

