CC = g++
.PHONY: all clean

SRCS = convLogic.cpp convTextMisc.cpp convTextScript.cpp main.cpp salsaLogic.cpp salsaText.cpp salsaTextDynamic.cpp salsaTextFixed.cpp salsaTextMap.cpp
HEADERS = salsaBinary.hpp salsaContainer.hpp salsaLogic.hpp salsaText.hpp salsa.hpp

all: salsa
	@:

salsa: $(SRCS) ${HEADERS}
	$(CC) -O0 -std=c++17 -fno-strict-aliasing $(SRCS) -o $@ $(LDFLAGS)

clean:
	$(RM) salsa salsa.exe
