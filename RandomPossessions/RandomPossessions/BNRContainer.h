//
//  BNRContainer.h
//  RandomPossessions
//
//  Created by kgaddy on 3/20/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

@interface BNRContainer : NSObject
{
    NSMutableArray *subItems;
    NSString *containerName;
    int containerValueInDollars;
    int subItemsTotals;
    NSUInteger totalItems;
}

-(void)addSubItem:(BNRItem *)item;
-(void)removeSubItem:(BNRItem *)item;
-(void)setContainerName:(NSString *)str;
-(void)setContainerValueInDollars:(int)value;
@end
