//sort.c
//Theodore Jagodits CS392 HW 1
//"I pledge my honor that I have abided by the Stevens Honor System"

#include "sort.h"

size_t size;
//checks if file successfully opened
void check_file_open(FILE* fp){
	if(fp == NULL){
		fprintf(stderr,"File could not open, Error No. %d\n",errno);
		exit(1);
	}
}
//reads input and returns ints by reading line by line
posInt* read_input(char* filen){
    posInt* arr;
    int sz;
    int i = 0;
    FILE *fp = fopen(filen, "r");
    check_file_open(fp);

    fseek(fp, 0L, SEEK_END);
    sz = ftell(fp);  
    rewind(fp);

    arr = malloc(sz);
    if(arr == NULL){
        fprintf(stderr,"Could not allocate Memory, Error No. %d\n",errno);
        free(arr);
        exit(1);
    }
    while(1){
        fscanf(fp,"%d",&arr[i]);
        if(ferror(fp)){
			fprintf(stderr,"Cannot read data, Error No. %d\n",errno);
		}
        //printf("i:%ld, str:%d\n", i, arr[i]);
        if(feof((fp))){
			break;
		}
        i++;
        size++;
    }
    fclose(fp);
    return arr;
}
//compare for qsort
int cmpfunc (const void * a, const void * b) {
   posInt i = *(posInt*)a;
   posInt j = *(posInt*)b;
   if(i<j){
       return -1;
   }else if(i > j){
       return 1;
   } else{
       return 0;
   }
}

//outputs array by opening second file
void output_array(posInt* arr, char* filen){
    FILE *fp = fopen(filen,"wb");
    check_file_open(fp);
    fwrite(arr,sizeof(int),size,fp);
    fclose(fp);
}
//main
int main(int argc, char ** argv){
    if(argc != 3){
        fprintf(stderr,"Incorrect amount of args, Error No. %d\n",errno);
	    return 1;
    }
    posInt* array_of_int = read_input(argv[1]);
    //quickSort(array_of_int, 0, size-1);
    qsort(array_of_int, size, sizeof(posInt), cmpfunc);
    output_array(array_of_int,argv[2]);
    
    free(array_of_int);
    return 0;
}