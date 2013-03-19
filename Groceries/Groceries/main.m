//
//  main.m
//  Groceries
//
//  Created by kgaddy on 3/6/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *itemOne = [NSString stringWithFormat:@"Oranges"];
        NSString *itemTwo = [NSString stringWithFormat:@"Pickles"];
        NSMutableArray *groceries = [NSMutableArray arrayWithObjects:itemOne,itemTwo, nil ];
        
        for(NSString *item in groceries){
            NSLog(@"Grocery Item:%@",item);
        }
        

        
    }
    return 0;
}

