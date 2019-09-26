//sort.h
//Theodore Jagodits CS392 HW 1
//"I pledge my honor that I have abided by the Stevens Honor System"
#ifndef SORT_H
#define SORT_H

#include<stdio.h>
#include<errno.h>
#include<stdlib.h>

typedef unsigned int posInt;

void check_file_open(FILE*);
void swap(int*,int*);
int cmpfunc(const void*,const void*);
posInt* read_input(char*);
void output_array(posInt*,char*);

#endif