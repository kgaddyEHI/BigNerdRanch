//
//  main.c
//  PBR
//
//  Created by kgaddy on 3/4/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void cartesianToPolar(float x, float y, double *rPtr, double *thetaPtr){
    //store the radius in the supplied address.
    *rPtr = sqrt(x * x + y * y);
    
    //calculate theta
    float theta;
    if(x==0.0){
        if(y==0.0){
            theta = 0.0;//undefined
            
        }
        else if(y==0){
            theta = M_PI_2;
        }else{
            theta = M_PI_2;
        }
    }else{
        theta = atan(y/x);
    }
    
    *thetaPtr = theta;
}

int main(int argc, const char * argv[])
{
    double pi = 3.14;
    double integerPart,fractionPart;
    //pass the address of the integerPart as an argument.
    fractionPart = modf(pi,&integerPart);
    //find the value stored in the integer part
    printf("integerPart = %.0f, fractionPart = %.2f\n",integerPart,fractionPart);
    
    double x = 3.0;
    double y = 4.0;
    double radius,angle;
    
    cartesianToPolar(x,y,&radius,&angle);
    printf("(%.2f, %.2f) becomes (%.2f radians, %.2f)\n", x,y,radius,angle);
    
    
    return 0;
}

