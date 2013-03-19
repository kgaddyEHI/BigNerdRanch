//
//  main.c
//  Turkey
//
//  Created by kgaddy on 3/3/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    //declare the var called 'weight' of type float
    float weight;
    //put a number in the varible
    weight=14.2;
    //log it to the user
    printf("Turkey weighs %f. \n", weight);
    //declare the cooking time
    float cookingTime;
    //calculate the cooking time
    cookingTime = 15.0 + 15.0 * weight;
    //log cooking time to user
    printf("cook it for %f minutes. \n",cookingTime);
    //end this function and indicate success
    return 0;
}

