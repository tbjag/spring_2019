//cs392_memcpy.c
//Theodore Jagodits CS392 HW 2
//"I pledge my honor that I have abided by the Stevens Honor System"

#include "cs392_string.h"

void * cs392_memcpy ( void * dst, void * src, unsigned num){
    //create casts
    char * dcpy = (char *)dst;
    char * scpy = (char *)src;
    //copy over 
    for(unsigned i = 0; i<num;i++){
        dcpy[i] = scpy[i];
    }
    //return 
    return dcpy;
}