#	Theodore Jagodits Assignment 3 CS392
#   I pledge my honor that I have abided by the Stevens Honor System
CC = gcc
OBJS = cs392_thread.o 
RM = rm -rf 

cs392_thread: $(OBJS)
	$(CC) -o cs392_thread $(OBJS) -pthread

%.o: %.c
	$(CC) -O3 -o $@ -c $< 

clean:
	$(RM) $(OBJS) cs392_thread
