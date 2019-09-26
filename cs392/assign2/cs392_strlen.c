//cs392_strlen.c
//Theodore Jagodits CS392 HW 2
//"I pledge my honor that I have abided by the Stevens Honor System"

#include "cs392_string.h"


unsigned cs392_strlen(char *str){
    //create int
    unsigned i = 0;
    //find leangth until end
    while(str[i]!='\0'){
        i++;
    }
    //return length
    return i;
}