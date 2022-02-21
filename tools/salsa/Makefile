CC = g++
.PHONY: all clean

SRCS = convTextMisc.cpp convTextScript.cpp main.cpp salsaText.cpp salsaTextDynamic.cpp salsaTextFixed.cpp salsaTextMap.cpp
HEADERS = salsaBinary.hpp salsaText.hpp salsa.hpp

all: salsa
	@:

salsa: $(SRCS) ${HEADERS}
	$(CC) -O3 -std=c++17 -fno-strict-aliasing $(SRCS) -o $@ $(LDFLAGS)

clean:
	$(RM) salsa salsa.exe
