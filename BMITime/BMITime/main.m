//
//  main.m
//  BMITime
//
//  Created by kgaddy on 3/6/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        //create an instance of Person
        Person *person = [[Person alloc] init];
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        
        //call the body mass index method
        float bmi = [person bodyMassIndex];
        NSLog(@"BMI:%f",bmi);
        NSLog(@"Height is %f",[person heightInMeters]);
  
        
    }
    return 0;
}

