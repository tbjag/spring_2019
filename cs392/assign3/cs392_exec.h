/*
*   Theodore Jagodits
*   CS 392
*   cs392_shell.c
*   I pledge my honor that I have abided by the Stevens Honor System
*/

#ifndef CS392_EXEC_H
#define CS392_EXEC_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <unistd.h>

int executeCommand(char**);

#endif