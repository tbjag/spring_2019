//“I pledge my honor that I have abided by the Stevens Honor System.”
//Theodore Jagodits 
// CS 392 Midterm

#include "cs392_midterm.h"

char *cs392_strcpy(char *dest, char *src){
    //sets i as global var in function
    int i = 0;
    //copies over until null char
    for(i; src[i] != '\0'; i++){
        dest[i] = src[i]; 
    }
    //sets null char a end 
    dest[i] = '\0';
	return dest;
} 
