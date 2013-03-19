//
//  main.c
//  Addresses
//
//  Created by kgaddy on 3/3/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i=17;
    int *addressOfI = &i;
    printf("i stores its value at %p\n", addressOfI);
    //printf("i stores its value at %p\n", &i);
    printf("this function starts at %p\n", main);
    *addressOfI = 89;
    printf("now i is %d\n",*addressOfI);
    printf("an int is %zu bytes\n", sizeof(int));
    printf("a pointer is %zu bytes\n", sizeof(int*));
    printf("The int stored at addressOfI is %d\n", *addressOfI);
    return 0;
}

