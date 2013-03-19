//
//  Person.h
//  BMITime
//
//  Created by kgaddy on 3/6/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}
- (float)heightInMeters;
-(int)weightInKilos;
- (void)setHeightInMeters:(float)h;
- (void)setWeightInKilos:(int)w;
- (float)bodyMassIndex;


@end
