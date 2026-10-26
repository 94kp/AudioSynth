CC = gcc
CFLAGS = -lm -Wall -Wextra -fsanitize=address -g

tones : tones.o
	$(CC) $(CFLAGS)	-o tones tones.o

tones.o : tones.c
	$(CC) $(CFLAGS) -c tones.c

clean:
	rm *.txt *.out *.o tones

cleanall:
	rm *.txt *.out *.o *.wav tones

