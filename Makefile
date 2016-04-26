CC=gcc
CFLAGS=-std=c99 -Wall -Werror

SOURCES=tokenizer.c
OBJECTS=$(SOURCES:.c=.o)

all: t1 t2 t3

clean:
	rm -f *.o
	rm -f t1
	rm -f t2
	rm -f t3

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

t1: $(OBJECTS) t1.c
	gcc -o t1 $(OBJECTS) t1.c

t2: $(OBJECTS) t2.c
	gcc -o t2 $(OBJECTS) t2.c

t3: $(OBJECTS) t3.c
	gcc -o t3 $(OBJECTS) t3.c