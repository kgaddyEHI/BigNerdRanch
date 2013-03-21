//
//  BNRItem.m
//  RandomPossessions
//
//  Created by kgaddy on 3/19/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
@synthesize itemName = _itemName;
@synthesize serialNumber=_serialNumber;
@synthesize valueInDollars=_valueInDollars;
@synthesize container = _container;
@synthesize containedItem = _containedItem;

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
                                    [self itemName],
                                    [self serialNumber],
                                    [self valueInDollars],
                                   [self dateCreated]];
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
    }
    return self;
}
-(id)initWithNameAndSerial:(NSString *)name serialNumber:(NSString *)sNumber
{
    self=[super init];
    if(self)
    {
        self = [self initWithItemName:name valueInDollars:0 serialNumber:sNumber];
    }
    return self;
}


-(NSString *)itemName
{
    return self.itemName;
}

-(void)setItemName:(NSString *)newItemName
{
    _itemName = newItemName;
}

-(void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}

-(NSString *)serialNumber
{
    return self.serialNumber;
}


-(void)setValuesInDollars:(int)i
{
    _valueInDollars=i;
}

-(int)valueInDollars
{
    return _valueInDollars;
}


-(NSDate *)dateCreated
{
    return self.dateCreated;
}

-(void)setContainedItem:(BNRItem *)i
{
    _containedItem = i;
    
    //when given an item to contain, the contained item will be given a pointer to it's container.
    [i setContainer:self];
}

-(BNRItem *)containedItem
{
    return self.containedItem;
}


-(void) setContainer:(BNRItem *)i
{
    _container=i;
}

-(BNRItem *)container
{
    return self.container;
}

@end
