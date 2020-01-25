
CC=gcc

CFLAGS= -g -march=native -I.

LDLIBS=-lstdc++

SOURCES=prog.cpp\
        lyra2v2.c\
        Lyra2.c\
        Sponge.c\
        sha3/sph_blake.c\
        sha3/sph_bmw.c\
        sha3/sph_cubehash.c\
        sha3/sph_keccak.c\
        sha3/sph_skein.c\

OBJECTS=$(SOURCES:.cpp=.o)
OUTPUT=bin/prog

all: $(SOURCES) $(OUTPUT)

$(OUTPUT): $(OBJECTS)
	$(CC) $(OBJECTS) $(LDLIBS) $(LDFLAGS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) -c $<

.c.o:
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o

install: clean all
	strip -s prog
	cp prog /usr/local/bin/
	cp prog ./bin/

