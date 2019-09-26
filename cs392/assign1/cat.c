//cat.c
//Theodore Jagodits CS392 HW 1
//"I pledge my honor that I have abided by the Stevens Honor System"
#include<stdio.h>
#include<errno.h>
#include<stdlib.h>

//prints the file and display as error 
void print_file (FILE* fp,char* ptr, int sz){
	fread(ptr,sizeof(char),sz,fp);
	for(int i = 0; i<sz;i++){
		printf("%c",ptr[i]);
	}
	
}
//displays error if function does not have the right amount of args
void argument_error(){
	fprintf(stderr,"Incorrect amount of args, Error No. %d\n",errno);
	exit(1);
}
//checks if file successfully opened
void check_file_open(FILE* fp){
	if(fp == NULL){
		fprintf(stderr,"File could not open, Error No. %d\n",errno);
		exit(1);
	}
}
//closes data stream and frees ptr
void close_file(FILE* fp,char* ptr){
	fclose(fp);
	free(ptr);
}
//checks if malloc worked
void check_malloc_error(char* ptr){
	if(ptr == NULL){
		fprintf(stderr,"Cannot allocate Memory, Error No. %d\n",errno);
		free(ptr);
		exit(1);
	}
}
//main
int main(int argc, char ** argv){
	if(argc != 2){
		argument_error();
	}
	char *ptr;
	int sz;
	FILE *fp = fopen(argv[1],"r");
	check_file_open(fp);
	fseek(fp, 0L, SEEK_END); 
	sz = ftell(fp);
	rewind(fp);
	ptr = malloc(sz+1);
	check_malloc_error(ptr);
	print_file(fp,ptr,sz);
	close_file(fp,ptr);
	return 0;
} 
