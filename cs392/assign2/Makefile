#makefile for cs392 hw2
#Theodore Jagodits
#'I pledge my honor that I have abided by the Stevens Honor System

%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

CC = gcc

CFLAGS = -Wall -Werror -fPIC
LIBFLAGS =  -shared -fPIC

PROG = cs392_ass2_test
LIBS = libcs392string.so

$(PROG) : cs392_ass2_test.o $(LIBS) 
	$(CC) $(CFLAGS) -o $@ $^

$(LIBS): cs392_memcpy.o cs392_strlen.o
	$(CC) $(LIBFLAGS) -o $@ $^ 

clean:
	rm -rf *.o *.so $(PROG)


