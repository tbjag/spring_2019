#include<stdio.h>
#include<pthread.h>

int counter = 0;

void* run_thread(void* noarg){
    int i =0;
    for(i=0;i<1000;i++){
        counter++;
    }
    pthread_exit(NULL);
    return NULL;
}

int main(){
    int pthread_t  tid;
    int threads i,e;
    
}