//
//  BNRItem.h
//  RandomPossessions
//
//  Created by kgaddy on 3/19/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

@property (nonatomic,copy) NSString *itemName;
@property(nonatomic,readwrite,strong)BNRItem *containedItem;
@property(nonatomic,copy)NSString *serialNumber;
@property(nonatomic)int valueInDollars;
@property(nonatomic,readonly,strong)NSDate *dateCreated;
@property(nonatomic, readwrite, weak)BNRItem *container;




+(BNRItem *)randomItem;

-(void)setContainedItem:(BNRItem *)i;
-(BNRItem *)containedItem;

-(void)setContainer:(BNRItem *)i;
-(BNRItem *)container;


-(id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;
-(id)initWithNameAndSerial:(NSString *)name serialNumber:(NSString *)sNumber;

-(void)setItemName:(NSString *)str;
-(NSString *)itemName;

-(void)setSerialNumber:(NSString *)str;
-(NSString *)serialNumber;

-(void)setValuesInDollars: (int)i;
-(int)valueInDollars;
-(NSDate *)dateCreated;

@end
