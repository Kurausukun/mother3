CC = g++
.PHONY: all clean

SRCS = main.cpp salsa_text.cpp

all: salsa
	@:

salsa: $(SRCS)
	$(CC) -std=c++17 -O2 $(SRCS) -o $@ $(LDFLAGS)

clean:
	$(RM) salsa salsa.exe
