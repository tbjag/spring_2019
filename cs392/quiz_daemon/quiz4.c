//Theodore Jagodits
//Quiz Daemon 

#include<sys/types.h>
#include<sys/stat.h>
#include<stdio.h>
#include<stdlib.h>
#include<fcntl.h>
#include<errno.h>
#include<unistd.h>
#include<syslog.h>
#include<string.h>
#include<time.h> 


int main(void){
    pid_t pid, sid;
    
    pid = fork();
    if(pid < 0){
        exit(EXIT_FAILURE);
    }
    if(pid > 0){
        exit(EXIT_SUCCESS);
    }
    umask(0);

    FILE *f;
    f = fopen("cs392_daemon.log","a");
    if(f == NULL){
        perror("Error Opening cs392_daemon.log\n");
        exit(1);
    }
    sid = setsid();
    if(sid < 0){
        exit(EXIT_FAILURE);
    }
    if((chdir("/tmp")) < 0){
        exit(EXIT_FAILURE);
    }

    close(STDIN_FILENO);
    close(STDOUT_FILENO);
    close(STDERR_FILENO);

    while(1){
        time_t t = time(NULL);
        struct tm*tm = localtime(&t);
        fprintf(f,"%s",asctime(tm));
        sleep(2);
    }
    fclose(f);
    exit(EXIT_SUCCESS);
}
