//
//  BNRContainer.m
//  RandomPossessions
//
//  Created by kgaddy on 3/20/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import "BNRContainer.h"
@interface BNRContainer()

@end

@implementation BNRContainer


-(NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%ld): Total $%d, Item Total $%d",
                                   containerName,
                                   [self totalItems],
                                   containerValueInDollars,
                                   [self subItemsTotals]];
    return descriptionString;
}

-(void)setContainerName:name
{
    containerName = name;
}

-(NSString *)containerName
{
    return containerName;
}

-(NSMutableArray *)subItems
{
    if(!subItems)
    {
        subItems =[[NSMutableArray alloc]init];
    }
    return subItems;
}

-(NSUInteger)totalItems
{
    totalItems = [[self subItems]count];
    return totalItems;
}

-(void)setContainerValueInDollars:(int)value
{
    containerValueInDollars = value;
}

-(int)containerValueInDollars
{
    return containerValueInDollars;
}



-(int)subItemsTotals
{

    for(BNRItem *item in subItems)
    {
        subItemsTotals = subItemsTotals + [item valueInDollars];
    }

    return subItemsTotals;
}


-(void)addSubItem:(BNRItem *)item
{
    if(!subItems) 
    {
        subItems =[[NSMutableArray alloc]init];    
    }
    
    if(item)
    {
        [subItems addObject:item];
    }
}
-(void)removeSubItem:(BNRItem *)item
{
    [[self subItems] removeObject:item];
}

@end
