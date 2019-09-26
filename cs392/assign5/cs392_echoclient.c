//cs392_echoclient.c
//Theodore Jagodits CS392 HW 5
//"I pledge my honor that I have abided by the Stevens Honor System"

#include <netdb.h> 
#include <stdio.h> 
#include <stdlib.h> 
#include <string.h> 
#include <sys/socket.h> 
#include <errno.h>
#include <arpa/inet.h>
#define MAX 80 
#define SA struct sockaddr 

void func(int sockfd) 
{ 
	char buff[MAX]; 
	int n =0; 
	memset(buff, 0,sizeof(buff)); 
	printf("Enter the string : "); 
	
	while ((buff[n++] = getchar()) != '\n') ; 
	send(sockfd, buff, sizeof(buff),0); 
	memset(buff, 0,sizeof(buff)); 
	recv(sockfd, buff, sizeof(buff),0); 
	printf("From Server : %s", buff); 
} 

int main(int argc, char** argv) 
{ 
	if(argc != 3){
		printf("wrong amount of args\n");
		exit(EXIT_FAILURE);
	} 
	int sockfd, connfd; 
	struct sockaddr_in servaddr, cli; 

	// socket create and verification 
	sockfd = socket(AF_INET, SOCK_STREAM, 0); 
	if (sockfd == -1) { 
		printf("socket creation failed...\n"); 
		exit(0); 
	} 
	
	printf("Socket successfully created..\n");
	memset(&servaddr,0, sizeof(servaddr)); 

	// assign IP, PORT 
	servaddr.sin_family = AF_INET; 
	servaddr.sin_addr.s_addr = inet_addr(argv[1]); //"127.0.0.1"
	servaddr.sin_port = htons(atoi(argv[2])); 

	// connect the client socket to server socket 
	if (connect(sockfd, (SA*)&servaddr, sizeof(servaddr)) != 0) { 
		printf("connection with the server failed...\n"); 
		exit(0); 
	} 
	else
		printf("connected to the server..\n"); 

	
	func(sockfd); 

	close(sockfd); 
} 
