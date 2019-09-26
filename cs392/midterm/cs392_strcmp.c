//“I pledge my honor that I have abided by the Stevens Honor System.”
//Theodore Jagodits 
// CS 392 Midterm

#include "cs392_midterm.h"

int cs392_strcmp(char *s1, char *s2){
    //global function var i
    int i = 0;
    //check if chars dont match in while loops until one of them ends
    while((s1[i]!='\0') && (s2[i]!='\0')){
        if(s1[i]!=s2[i]){
            return s1[i] - s2[i];
        }
        i++;
    }
    //check if both end at the same \0
    //or one ends earlier
    if((s1[i]=='\0') && (s2[i]=='\0')){
        return 0;
    }
    else if(s1[i]=='\0'){
        return -1;
    }
    else if(s2[i]=='\0'){
        return 1;
    }
    else{
        return 0;
    }
}
