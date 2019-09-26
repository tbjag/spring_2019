/*
*   Theodore Jagodits
*   CS 392
*   cs392_shell.c
*   I pledge my honor that I have abided by the Stevens Honor System
*/

#include <stdlib.h>
#include <errno.h>
#include"cs392_exec.h"
#include"cs392_log.h"
#include"cs392_signal.h"


//allocates and splits up into string
char** splitInput(char* input,int readLength){
   int words = 1;
    for(int i=0; input[i] != '\0'; i++){ //to end of string
        if(input[i] == ' ' && input[i+1] !=' '){ //checks if there is a double space is or if there are extra spaces after command
            words++;
        }
    }
    char** output = malloc(256 * sizeof(char*));
    for(int i=0; i<words; i++){
        output[i] = malloc(sizeof(char) * words);
    }
    char* ptr = strtok(input, " ");
    int j = 0;
    while(ptr != NULL){
        strcpy(output[j], ptr);
        ptr = strtok(NULL, " ");
        j++;
    }
    output[j] = NULL; //sets end of array to null so we know what it is
    
    return output;
}

void freeDaVars(char** vars){
    for(int i=0; vars[i]!=NULL; i++){
            free(vars[i]);
        }
    free(vars);
}

void loop(){
    char input[1024];
    int readLength;
    //status?
    while(1){
        checkSignal();
        printf("cs392_shell $: ");
        fflush(stdout);
        readLength = read(0, input, 1023);
        if(readLength < 0){ //handling signals
            if(errno == EINTR){     
                continue;
            }else{
                perror("Error reading in.\n");
                exit(1);
            }
        }
        input[readLength-1] = '\0';

    logtolog(input);

    char** arr = splitInput(input,readLength); //create and split input 
    
    //create int that returns status of command
    int executeStatus = executeCommand(arr);

    if(executeStatus == 1){//case 1: is if user types exit
        printf("exiting...\n");
        freeDaVars(arr);//free the array
        exit(0);
    } else if(executeStatus == 2){//2: some for issue has occurred 
        perror("Error forking. Exiting\n");
        freeDaVars(arr);
        exit(1);
    } else if(executeStatus == 3){//3: user types in unknown command
        printf("Command %s not found. Try Again.\n",arr[0]);
        freeDaVars(arr);
    }else if(executeStatus==0){//0: executes correctly
        freeDaVars(arr);
        continue;
    }else{// some reason these 4 cases were not reached
        printf("some error has occurred. will exit now\n");
        freeDaVars(arr);
        exit(1);
        }
    }
}

int main(){

    loop();

    return 0;
}