//“I pledge my honor that I have abided by the Stevens Honor System.”
//Theodore Jagodits 
// CS 392 Midterm

#include "cs392_midterm.h"

char *cs392_strncat(char *dest, char *src, unsigned n){
    //sets vars
    int i = 0;
    int j = 0;
    //finds length 
    while(dest[i]!='\0'){
        i++;
    }
    //works off length and continues
    for(; j<n;i++,j++){
        dest[i] = src[j];
    }
    dest[i] = '\0';
	return dest;
}
