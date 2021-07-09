### Build Configuration ###

# Default variables
GAME_REVISION ?= 0
GAME_REGION   ?= JAPAN
DEBUG         ?= 0
COMPARE       ?= 1

# For gbafix
MAKER_CODE := 01

# Version
BUILD_NAME := mother3
TITLE      := MOTHER3
GAME_CODE  := A3U

# Revision
ifeq ($(GAME_REVISION), 0)
  BUILD_NAME := $(BUILD_NAME)
else
  $(error unknown revision $(GAME_REVISION))
endif

# Region
ifeq ($(GAME_REGION), USA)
  BUILD_NAME := $(BUILD_NAME)
  GAME_CODE  := $(GAME_CODE)E
else
ifeq ($(GAME_REGION), EUROPE)
  BUILD_NAME := $(BUILD_NAME)
  GAME_CODE  := $(GAME_CODE)P
else
ifeq ($(GAME_REGION), JAPAN)
  BUILD_NAME := $(BUILD_NAME)
  GAME_CODE  := $(GAME_CODE)J
else
  $(error unknown region $(GAME_REGION))
endif
endif
endif

# Debug
ifeq ($(DEBUG), 1)
  COMPARE := 0
  BUILD_NAME := $(BUILD_NAME)_debug
endif


