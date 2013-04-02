//
//  Employee.m
//  BMITime
//
//  Created by kgaddy on 3/30/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import "Employee.h"


@implementation Employee

@synthesize employeeID;
-(float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

@end
