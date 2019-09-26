/*
*   Theodore Jagodits
*   CS 392
*   cs392_shell.c
*   I pledge my honor that I have abided by the Stevens Honor System
*/

#include "cs392_exec.h"

int executeCommand(char** input){
    pid_t pid;
    if(strcmp(input[0],"exit")==0){
        return 1;
    }
    if((pid=fork()) < 0){
        return 2;
    }else if(pid>0){
        wait(NULL);
    }else{
        if(execvp(input[0], input)<0){
            return 3;
        }
    }
    return 0;
}