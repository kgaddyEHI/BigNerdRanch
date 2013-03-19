//
//  main.c
//  BMICalc
//
//  Created by kgaddy on 3/4/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#include <stdio.h>

typedef struct{
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p){
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[])
{
    Person person;
    person.weightInKilos = 96;
    person.heightInMeters = 1.8;
    printf("person weighs %i killograms\n", person.weightInKilos);
    printf("person is %.2f meters tall\n", person.heightInMeters);
    float bmi = bodyMassIndex(person);
    printf("person has a bmi of %.2f\n",bmi);
    
    return 0;
}

