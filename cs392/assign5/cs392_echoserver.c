//cs392_echoserver.c
//Theodore Jagodits CS392 HW 5
//"I pledge my honor that I have abided by the Stevens Honor System"

#include"cs392_log.h"
#include <netdb.h> 
#include <netinet/in.h> 
#include <stdlib.h> 
#include <string.h> 
#include <sys/socket.h> 
#include <sys/types.h> 
#include <arpa/inet.h>
#define MAX 80 
#define CONNECTIONS 5
#define SA struct sockaddr 

// Function designed for chat between client and server. 
void repeat(int sockfd) 
{ 
	char buff[MAX]; 
	
	//clears memory of buffer
	memset(buff, 0, MAX); 
	// read the message from client and copy it in buffer 
	recv(sockfd, buff, sizeof(buff),0); 
	// print buffer which contains the client contents 
	printf("From client: %s", buff); 
	// and send that buffer to client 
	send(sockfd, buff, sizeof(buff),0); 
	
} 

// Driver function 
int main(int argc, char** argv) 
{ 
	//printf("good");
	if(argc != 2){
		printf("wrong amount of args");
		exit(EXIT_FAILURE);
	} 
	int sockfd, connfd, len; 
	struct sockaddr_in servaddr, cli; 
	//socket creation and verification 
	sockfd = socket(AF_INET, SOCK_STREAM, 0); 
	if (sockfd == -1) { 
		printf("socket creation failed...\n"); 
		exit(1); 
	} 
	else{
		printf("Socket successfully created..\n");
	}
	
	memset(&servaddr,0, sizeof(servaddr)); 

	//assign IP, PORT 
	servaddr.sin_family = AF_INET; 
	servaddr.sin_addr.s_addr = htonl(INADDR_ANY); 
	servaddr.sin_port = htons(atoi(argv[1])); //atoi(argv[1])

	// Binding newly created socket to given IP and verification 
	if ((bind(sockfd, (SA*)&servaddr, sizeof(servaddr))) != 0) { 
		printf("socket bind failed...\n"); 
		exit(1); 
	} 
	else{
		printf("Socket successfully binded..\n"); 
	}

	for(;;){
		// Now server is ready to listen and verification 
		if ((listen(sockfd, CONNECTIONS)) != 0) { 
			printf("Listen failed...\n"); 
			exit(1); 
		} 
		else{
			printf("Server listening..\n"); 
			len = sizeof(cli); 
		}

		// Accept the data packet from client and verification 
		connfd = accept(sockfd, (SA*)&cli, &len); 
		//printf("port is: %d\n", (int) ntohs(cli.sin_port));
		if (connfd < 0) { 
			printf("server accept failed...\n"); 
			exit(1); 
		} 
		else{
			printf("server accept the client...\n"); 
			cs392_socket_log(inet_ntoa(cli.sin_addr),ntohs(cli.sin_port));
			}
	
		repeat(connfd); 
		
	}
	//close(sockfd); 
} 
