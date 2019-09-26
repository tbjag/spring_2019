//Theodore Jagodits  I pledge my honor that I have abided by the Stevens Honor System
#include <unistd.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
int count = 0;
void sig_handler(int signo){
    if(count == 1){
        printf("received signal 0w0\n");
        exit(0);
    }
    if(signo == SIGINT){
        printf("received signal 0w0\n");
        count++;
    }
}

int main(){
    if(signal(SIGINT, sig_handler) == SIG_ERR){
        printf("can't catch sig\n");
    }

    while(1){
        sleep(1);
        printf("hihi\n");
    }
}
