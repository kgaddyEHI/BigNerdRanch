//
//  Person.m
//  BMITime
//
//  Created by kgaddy on 3/6/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import "Person.h"

@implementation Person
-(float)heightInMeters
{
    return heightInMeters;
}
- (void)setHeightInMeters:(float)h
{
    heightInMeters = h;
}
-(int)weightInKilos
{
    return weightInKilos;
}
- (void)setWeightInKilos:(int)w
{
    weightInKilos = w;
}
- (float)bodyMassIndex {
    return weightInKilos / (heightInMeters * heightInMeters);
}


@end
