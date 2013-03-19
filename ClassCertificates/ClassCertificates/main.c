//
//  main.c
//  ClassCertificates
//
//  Created by kgaddy on 3/3/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#include <stdio.h>

void congradulateStudent(char *student, char *course, int numDays){
    printf("%s has done as much %s programming as I could fit in %d days. \n", student, course,numDays);
}

int main(int argc, const char * argv[])
{
    congradulateStudent("Mark","Cocoa",5);
    congradulateStudent("Bo","Objective-c",2);
    congradulateStudent("Mike","Pyton",5);
    congradulateStudent("Ted","ios",5);
/*
    printf("Mark has done as much cocca programming as possible in 5 days \n");
    printf("Bo has done as much objective-c programming as possible in 2 days \n");
    printf("Mike has done as much python programming as possible in 5 days \n");
    printf("Ted has done as much ios programming as possible in 5 days \n");
 */
    return 0;
}

