/*
*   Theodore Jagodits
*   CS 392
*   cs392_shell.c
*   I pledge my honor that I have abided by the Stevens Honor System
*/

#include"cs392_log.h"

void logtolog(char* input){
    FILE *f;
    f = fopen("cs392_shell.log","a");
    if(f == NULL){
        perror("Error Opening cs392_shell.log\n");
    }else{
        fprintf(f,"%s\n",input);
    }
    fclose(f);
}