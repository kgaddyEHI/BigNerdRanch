//
//  BNRItem.m
//  RandomPossessions
//
//  Created by kgaddy on 3/19/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
+(id)randomItem
{
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",@"Rusty",@"Shiny", nil];
    NSArray *randomNouns = [NSArray arrayWithObjects:@"Bear", @"Spork",@"Mac", nil];
    
    NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
    NSInteger nounIndex = rand() % [randomNouns count];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerial = [NSString stringWithFormat:@"%c%c%c%c%c", '0' + rand() % 10,
                                                                       'A' + rand() % 26,
                                                                       '0' + rand() % 10,
                                                                       'A' + rand() % 26,
                                                                       '0' + rand() % 10];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", [randomAdjectiveList objectAtIndex:adjectiveIndex], [randomNouns objectAtIndex:nounIndex]];
    return [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerial];
    
    
}

-(NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                                    itemName,
                                    serialNumber,
                                    valueIndollars,
                                    dateCreated];
    return descriptionString;
}

-(id)init
{
    return [self initWithItemName:@"Item" valueInDollars:0 serialNumber:@""];
}

-(id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super init];
    if(self)
    {
        [self setItemName:name];
        [self setSerialNumber:sNumber];
        [self setValuesInDollars:value];
          dateCreated = [[NSDate alloc]init];
    }
    return self;
}


-(NSString *)itemName
{
    return itemName;
}

-(void)setItemName:(NSString *)newItemName
{
    itemName = newItemName;
}

-(void)setSerialNumber:(NSString *)str
{
    serialNumber=str;
}

-(NSString *)serialNumber
{
    return serialNumber;
}


-(void)setValuesInDollars:(int)i
{
    valueIndollars = i;
}

-(int)valueInDollars
{
    return valueIndollars;
}


-(NSDate *)dateCreated
{

    return dateCreated;
}

@end
