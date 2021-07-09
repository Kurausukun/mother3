TOOLCHAIN := $(DEVKITARM)
COMPARE ?= 0

TOOLCHAIN := $(DEVKITARM)
COMPARE ?= 0

ifeq (compare,$(MAKECMDGOALS))
  COMPARE := 1
endif

# don't use dkP's base_tools anymore
# because the redefinition of $(CC) conflicts
# with when we want to use $(CC) to preprocess files
# thus, manually create the variables for the bin
# files, or use arm-none-eabi binaries on the system
# if dkP is not installed on this system

ifneq (,$(TOOLCHAIN))
ifneq ($(wildcard $(TOOLCHAIN)/bin),)
export PATH := $(TOOLCHAIN)/bin:$(PATH)
endif
endif

PREFIX := arm-none-eabi-
OBJCOPY := $(PREFIX)objcopy
OBJDUMP := $(PREFIX)objdump
AS := $(PREFIX)as
LD := $(PREFIX)ld

ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif

TITLE       := MOTHER3
GAME_CODE   := A3UJ
MAKER_CODE  := 01
REVISION    := 0

ROM_NAME := mother3.gba
ELF_NAME := $(ROM_NAME:.gba=.elf)
MAP_NAME := $(ROM_NAME:.gba=.map)
OBJ_DIR_NAME := build/mother3

SHELL := /bin/bash -o pipefail

ELF = $(ROM:.gba=.elf)
MAP = $(ROM:.gba=.map)
SYM = $(ROM:.gba=.sym)

ASM_SUBDIR = asm
DATA_SUBDIR = data

ASM_BUILDDIR = $(OBJ_DIR)/$(ASM_SUBDIR)
DATA_BUILDDIR = $(OBJ_DIR)/$(DATA_SUBDIR)

ASFLAGS := -mcpu=arm7tdmi

LDFLAGS = -Map ../../$(MAP)
SHA1 := $(shell { command -v sha1sum || command -v shasum; } 2>/dev/null) -c

MAKEFLAGS += --no-print-directory

# Clear the default suffixes
.SUFFIXES:
# Don't delete intermediate files
.SECONDARY:
# Delete files that weren't built properly
.DELETE_ON_ERROR:

# Secondary expansion is required for dependency variables in object rules.
.SECONDEXPANSION:

.PHONY: all rom clean compare

infoshell = $(foreach line, $(shell $1 | sed "s/ /__SPACE__/g"), $(info $(subst __SPACE__, ,$(line))))

ASM_SRCS := $(wildcard $(ASM_SUBDIR)/*.s)
ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(ASM_BUILDDIR)/%.o,$(ASM_SRCS))

DATA_SRCS := $(wildcard $(DATA_SUBDIR)/*.s)
DATA_OBJS := $(patsubst $(DATA_SUBDIR)/%.s,$(DATA_BUILDDIR)/%.o,$(DATA_SRCS))

SUBDIRS  := $(sort $(dir $(OBJS)))
$(shell mkdir -p $(SUBDIRS))

AUTO_GEN_TARGETS :=

all: rom

rom: $(ROM)
ifeq ($(COMPARE),1)
	@$(SHA1) rom.sha1
endif

# For contributors to make sure a change didn't affect the contents of the ROM.
compare: all

clean:
	rm -f $(ROM_NAME) $(ELF_NAME) $(MAP_NAME)
	rm -rf $(OBJ_DIR_NAME)

define ASM_DEP
$1: $2 $$(shell $(SCANINC) -I include -I "" $2)
	$$(AS) $$(ASFLAGS) -o $$@ $$<

$(foreach src, $(ASM_SRCS), $(eval $(call ASM_DEP,$(patsubst $(ASM_SUBDIR)/%.s,$(ASM_BUILDDIR)/%.o, $(src)),$(src))))

$(OBJ_DIR)/sym_iwram.ld: sym_iwram.txt
	$(RAMSCRGEN) iwram_data <$ JAPANESE > $@

$(OBJ_DIR)/sym_ewram.ld: sym_ewram.txt
	$(RAMSCRGEN) ewram_data $< JAPANESE > $@

LD_SCRIPT := ld_script.txt
LD_SCRIPT_DEPS := $(OBJ_DIR)/sym_iwram.ld $(OBJ_DIR)/sym_ewram.ld

$(OBJ_DIR)/ld_script.ld: $(LD_SCRIPT) $(LD_SCRIPT_DEPS)
	cd $(OBJ_DIR) && $(LD) $(LDFLAGS) -T ld_script.ld -o ../../$@ <objects> <lib>"

$(ELF): $(OBJ_DIR)/ld_script.ld $(OBJS) berry_fix libagbsyscall
	@echo "cd $(OBJ_DIR) && $(LD) $(LDFLAGS) -T ld_script.ld -o ../../$@ <objects> <lib>"
	@cd $(OBJ_DIR) && $(LD) $(LDFLAGS) -T ld_script.ld -o ../../$@ $(OBJS_REL) $(LIB)

$(ROM): $(ELF)
	$(OBJCOPY) -O binary $< $@
	$(FIX) $@ -p --silent
