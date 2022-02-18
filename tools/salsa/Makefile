CC = g++
.PHONY: all clean

SRCS = main.cpp salsa_text.cpp conv_script.cpp conv_misc_text.cpp
HEADERS = salsa_text.hpp salsa.hpp

all: salsa
	@:

salsa: $(SRCS) ${HEADERS}
	$(CC) -O3 -std=c++17 -fno-strict-aliasing $(SRCS) -o $@ $(LDFLAGS)

clean:
	$(RM) salsa salsa.exe
