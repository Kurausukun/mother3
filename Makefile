#### Tools ####
include config.mk

DISABLE_SOUND ?= 0

ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif

CC1      := tools/agbcc/bin/agbcc$(EXE)
CC1_OLD  := tools/agbcc/bin/old_agbcc$(EXE)
CXX      := tools/agbcc/bin/agbcp$(EXE)
CPP      := $(DEVKITARM)/bin/arm-none-eabi-cpp
AS       := $(DEVKITARM)/bin/arm-none-eabi-as
LD       := $(DEVKITARM)/bin/arm-none-eabi-ld
OBJCOPY  := $(DEVKITARM)/bin/arm-none-eabi-objcopy
SHELL    := /bin/bash -o pipefail
SHA1     := $(shell { command -v sha1sum || command -v shasum; } 2>/dev/null) -c

GFX := tools/gbagfx/gbagfx$(EXE)
AIF := tools/aif2pcm/aif2pcm$(EXE)
MID := $(abspath tools/mid2agb/mid2agb)$(EXE)
SCANINC := tools/scaninc/scaninc$(EXE)
PREPROC := tools/preproc/preproc$(EXE)
GBAFIX := tools/gbafix/gbafix$(EXE)
SALSA := tools/salsa/build/salsa$(EXE)

CXXFLAGS := -fno-exceptions -fno-rtti -quiet
CC1FLAGS := -mthumb-interwork -Wimplicit -Wparentheses -O2 -g3 -fdwarf-bugfix
CPPFLAGS := -I tools/agbcc/include -iquote include -nostdinc -undef -D VERSION_$(GAME_VERSION) -D REVISION=$(GAME_REVISION) -D $(GAME_REGION) -D DEBUG=$(DEBUG) -D DISABLE_SOUND=$(DISABLE_SOUND)
ASFLAGS  := -mcpu=arm7tdmi -mthumb-interwork -I asminclude -I include --defsym VERSION_$(GAME_VERSION)=1 --defsym REVISION=$(GAME_REVISION) --defsym $(GAME_REGION)=1 --defsym DEBUG=$(DEBUG) --defsym GAME_VERSION=$(GAME_VERSION) --defsym GAME_REVISION=$(GAME_REVISION) --defsym DISABLE_SOUND=$(DISABLE_SOUND)
#### Files ####
OBJ_DIR  := build/$(BUILD_NAME)
ROM 	 := $(BUILD_NAME).gba
MAP      := $(ROM:%.gba=%.map)
ELF      := $(ROM:%.gba=%.elf)
LDSCRIPT := ld_script.ld
LDFLAGS = --no-check-section -Map ../../$(MAP)

# Build tools when building the rom
# Disable dependency scanning for clean/tidy/tools
#ifeq (,$(filter-out all compare,$(MAKECMDGOALS)))
#$(call infoshell, $(MAKE) tools)
#else
NODEP := 0
#endif

C_SUBDIR = src
C_DATA_SUBDIR = src/data
SRC_ASM_SUBDIR = src
ASM_SUBDIR = asm
DATA_ASM_SUBDIR = data
RODATA_ASM_SUBDIR = rodata
SOUND_ASM_SUBDIR = sound
BANK_ASM_SUBDIR = sound/bank
SEQ_ASM_SUBDIR = sound/seq
WAVE_ASM_SUBDIR = sound/wave
ASSETS_SUBDIR = assets

C_BUILDDIR = $(OBJ_DIR)/$(C_SUBDIR)
C_DATA_BUILDDIR = $(OBJ_DIR)/$(C_DATA_SUBDIR)
SRC_ASM_BUILDDIR = $(OBJ_DIR)/$(C_SUBDIR)
ASM_BUILDDIR = $(OBJ_DIR)/$(ASM_SUBDIR)
DATA_ASM_BUILDDIR = $(OBJ_DIR)/$(DATA_ASM_SUBDIR)
RODATA_ASM_BUILDDIR = $(OBJ_DIR)/$(RODATA_ASM_SUBDIR)
SOUND_ASM_BUILDDIR = $(OBJ_DIR)/$(SOUND_ASM_SUBDIR)
BANK_ASM_BUILDDIR = $(OBJ_DIR)/$(BANK_ASM_SUBDIR)
SEQ_ASM_BUILDDIR = $(OBJ_DIR)/$(SEQ_ASM_SUBDIR)
WAVE_ASM_BUILDDIR = $(OBJ_DIR)/$(WAVE_ASM_SUBDIR)
ASSETS_BUILDDIR = $(OBJ_DIR)/$(ASSETS_SUBDIR)

#$(shell mkdir -p $(C_BUILDDIR) $(C_DATA_BUILDDIR) $(SRC_ASM_BUILDDIR) $(ASM_BUILDDIR) $(DATA_ASM_BUILDDIR) $(RODATA_ASM_BUILDDIR) $(SOUND_ASM_BUILDDIR) $(BANK_ASM_BUILDDIR) $(SEQ_ASM_BUILDDIR) $(WAVE_ASM_BUILDDIR))

C_SRCS_IN := $(wildcard $(C_SUBDIR)/*.c $(C_SUBDIR)/*/*.c $(C_SUBDIR)/*/*/*.c $(C_SUBDIR)/*/*/*/*.c)
C_SRCS := $(foreach src,$(C_SRCS_IN),$(if $(findstring .inc.c,$(src)),,$(src)))
C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(C_BUILDDIR)/%.o,$(C_SRCS))
CPP_SRCS_IN := $(wildcard $(C_SUBDIR)/*.cpp $(C_SUBDIR)/*/*.cpp $(C_SUBDIR)/*/*/*.cpp $(C_SUBDIR)/*/*/*/*.cpp)
CPP_SRCS := $(foreach src,$(CPP_SRCS_IN),$(if $(findstring .inc.cpp,$(src)),,$(src)))
CPP_OBJS := $(patsubst $(C_SUBDIR)/%.cpp,$(C_BUILDDIR)/%.o,$(CPP_SRCS))

SRC_ASM_SRCS := $(wildcard $(C_SUBDIR)/*.s $(C_SUBDIR)/*/*.s $(C_SUBDIR)/*/*/*.s)
SRC_ASM_OBJS := $(patsubst $(C_SUBDIR)/%.s,$(SRC_ASM_BUILDDIR)/%.o,$(SRC_ASM_SRCS))

ASM_SRCS := $(wildcard $(ASM_SUBDIR)/*.s $(ASM_SUBDIR)/*/*.s $(ASM_SUBDIR)/*/*/*.s)
ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(ASM_BUILDDIR)/%.o,$(ASM_SRCS))

DATA_ASM_SRCS := $(wildcard $(DATA_ASM_SUBDIR)/*.s)
DATA_ASM_OBJS := $(patsubst $(DATA_ASM_SUBDIR)/%.s,$(DATA_ASM_BUILDDIR)/%.o,$(DATA_ASM_SRCS))

RODATA_ASM_SRCS := $(wildcard $(RODATA_ASM_SUBDIR)/*.s)
RODATA_ASM_OBJS := $(patsubst $(RODATA_ASM_SUBDIR)/%.s,$(RODATA_ASM_BUILDDIR)/%.o,$(RODATA_ASM_SRCS))

SOUND_ASM_SRCS := $(wildcard $(SOUND_ASM_SUBDIR)/*.s)
SOUND_ASM_OBJS := $(patsubst $(SOUND_ASM_SUBDIR)/%.s,$(SOUND_ASM_BUILDDIR)/%.o,$(SOUND_ASM_SRCS))

BANK_ASM_SRCS := $(wildcard $(BANK_ASM_SUBDIR)/*.s)
BANK_ASM_OBJS := $(patsubst $(BANK_ASM_SUBDIR)/%.s,$(BANK_ASM_BUILDDIR)/%.o,$(BANK_ASM_SRCS))

SEQ_ASM_SRCS := $(wildcard $(SEQ_ASM_SUBDIR)/*.s)
SEQ_ASM_OBJS := $(patsubst $(SEQ_ASM_SUBDIR)/%.s,$(SEQ_ASM_BUILDDIR)/%.o,$(SEQ_ASM_SRCS))

WAVE_ASM_SRCS := $(wildcard $(WAVE_ASM_SUBDIR)/*.s)
WAVE_ASM_OBJS := $(patsubst $(WAVE_ASM_SUBDIR)/%.s,$(WAVE_ASM_BUILDDIR)/%.o,$(WAVE_ASM_SRCS))

ASSETS_SRCS := $(wildcard $(ASSETS_SUBDIR)/*.salsa)
ASSETS_OBJS := $(patsubst $(ASSETS_SUBDIR)/%.salsa,$(ASSETS_BUILDDIR)/%.o,$(ASSETS_SRCS))

OBJS := $(CPP_OBJS) $(C_DATA_OBJS) $(SRC_ASM_OBJS) $(ASM_OBJS) $(SOUND_ASM_OBJS) $(BANK_ASM_OBJS) $(SEQ_ASM_OBJS) $(WAVE_ASM_OBJS) $(DATA_ASM_OBJS) $(RODATA_ASM_OBJS) $(ASSETS_OBJS)
OBJS_REL := $(patsubst $(OBJ_DIR)/%,%,$(OBJS))

SUBDIRS  := $(sort $(dir $(OBJS)))
$(shell mkdir -p $(SUBDIRS))

$(C_BUILDDIR)/agb_sram.o: CC1FLAGS := -O1 -mthumb-interwork
$(C_BUILDDIR)/test.o: CC1FLAGS := -O0 -mthumb-interwork
$(C_BUILDDIR)/sub_801E0EC.o: CC1FLAGS := -O0 -mthumb-interwork -g

$(C_BUILDDIR)/m4a_2.o: CC1FLAGS := -mthumb-interwork -O1
$(C_BUILDDIR)/m4a_4.o: CC1FLAGS := -mthumb-interwork -O1

#### Main Rules ####

# Available targets
.PHONY: all clean tidy tools text

MAKEFLAGS += --no-print-directory
# Secondary expansion is required for dependency variables in object rules.
.SECONDEXPANSION:
# Clear the default suffixes
.SUFFIXES:
# Don't delete intermediate files
.SECONDARY:
# Delete files that weren't built properly
.DELETE_ON_ERROR:

all: $(ROM)
	@python3 progress.py
ifeq ($(COMPARE),1)
	@$(SHA1) $(BUILD_NAME).sha1
endif

compare: $(ROM)
	$(SHA1) -c $(BUILD_NAME).sha1

clean: mostlyclean
	rm -rf $(ASSETS_SRCS) $(basename $(ASSETS_SRCS))

mostlyclean: tidy
	find . \( -iname '*.1bpp' -o -iname '*.4bpp' -o -iname '*.8bpp' -o -iname '*.gbapal' -o -iname '*.lz' -o -iname '*.latfont' -o -iname '*.hwjpnfont' -o -iname '*.fwjpnfont' -o -iname '*.bcg' \) -exec rm {} +

tidy:
	$(RM) $(ROM) $(ELF) $(MAP) $(OBJS)
	rm -r build

include graphics_file_rules.mk

%.s: ;
%.png: ;
%.pal: ;
%.aif: ;

%.1bpp: %.png  ; $(GFX) $< $@
%.4bpp: %.png  ; $(GFX) $< $@
%.8bpp: %.png  ; $(GFX) $< $@
%.gbapal: %.pal ; $(GFX) $< $@
%.gbapal: %.png ; $(GFX) $< $@
%.lz: % ; $(GFX) $< $@
%.rl: % ; $(GFX) $< $@

#### Dependencies ####
ifeq ($(NODEP),1)
$(C_BUILDDIR)/%.o: c_dep :=
else
$(C_BUILDDIR)/%.o: c_dep = $(shell $(SCANINC) -I include $(C_SUBDIR)/$*.cpp)
endif

ifeq ($(NODEP),1)
$(ASM_BUILDDIR)/%.o: asm_dep :=
else
$(ASM_BUILDDIR)/%.o: asm_dep = $(shell $(SCANINC) -I "" $(ASM_SUBDIR)/$*.s)
endif

ifeq ($(NODEP),1)
$(DATA_ASM_BUILDDIR)/%.o: data_dep :=
else
$(DATA_ASM_BUILDDIR)/%.o: data_dep = $(shell $(SCANINC) -I include -I "" $(DATA_ASM_SUBDIR)/$*.s)
endif

ifeq ($(NODEP),1)
$(RODATA_ASM_BUILDDIR)/%.o: rodata_dep :=
else
$(RODATA_ASM_BUILDDIR)/%.o: rodata_dep = $(shell $(SCANINC) -I include -I "" $(RODATA_ASM_SUBDIR)/$*.s)
endif

#### Recipes ####
   
$(OBJ_DIR)/ld_script.ld: $(LDSCRIPT) $(OBJ_DIR)/sym_ewram.txt $(OBJ_DIR)/sym_iwram.txt
	cd $(OBJ_DIR) && sed "s#tools/#../../tools/#g" ../../$(LDSCRIPT) > $(LDSCRIPT)
    
$(OBJ_DIR)/sym_ewram.txt: sym_ewram.txt
	$(CPP) -P $(CPPFLAGS) $< | sed -e "s#tools/#../../tools/#g" > $@
    
$(OBJ_DIR)/sym_iwram.txt: sym_iwram.txt
	$(CPP) -P $(CPPFLAGS) $< | sed -e "s#tools/#../../tools/#g" > $@

setup:
	make -C tools/aif2pcm
	make -C tools/gbafix
	make -C tools/preproc
	make -C tools/scaninc

	cmake -S tools/salsa -B tools/salsa/build -DCMAKE_CXX_COMPILER=g++-10
	make -C tools/salsa/build

	$(SALSA) --extract baserom.gba assets/mainscript.salsa
	$(SALSA) --extract baserom.gba assets/misctext.salsa
	$(SALSA) --extract baserom.gba assets/logic.salsa

# $(C_OBJS): $(C_SRCS)
# 	$(CPP) $(CPPFLAGS) $< -o $(C_BUILDDIR)/$(<F).i
# 	$(PREPROC) $(C_BUILDDIR)/$(<F).i charmap.txt > $(C_BUILDDIR)/$(<F).p.i
# 	$(PREPROC) $(C_BUILDDIR)/$(<F).i charmap.txt | $(CC1) $(CC1FLAGS) -o $(C_BUILDDIR)/$(<F).s
# 	@echo -e ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/$(<F).s
# 	$(AS) $(ASFLAGS) -o $@ $(C_BUILDDIR)/$(<F).s

$(C_BUILDDIR)/%.o : $(C_SUBDIR)/%.c $$(c_dep)
	$(CPP) $(CPPFLAGS) $< -o $(C_BUILDDIR)/$*.i
	$(PREPROC) $(C_BUILDDIR)/$*.i charmap.txt > $(C_BUILDDIR)/$*.p.i
	$(PREPROC) $(C_BUILDDIR)/$*.i charmap.txt | $(CC1) $(CC1FLAGS) -o $(C_BUILDDIR)/$*.s
	@echo -e ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/$*.s
	$(AS) $(ASFLAGS) -o $@ $(C_BUILDDIR)/$*.s

$(C_BUILDDIR)/%.o : $(C_SUBDIR)/%.cpp $$(c_dep)
	$(CPP) $(CPPFLAGS) $< -o $(C_BUILDDIR)/$*.i
	$(PREPROC) $(C_BUILDDIR)/$*.i charmap.txt > $(C_BUILDDIR)/$*.p.i
	$(PREPROC) $(C_BUILDDIR)/$*.i charmap.txt | $(CXX) $(CXXFLAGS) $(CC1FLAGS) -o $(C_BUILDDIR)/$*.s
	@echo -e ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/$*.s
	$(AS) $(ASFLAGS) -o $@ $(C_BUILDDIR)/$*.s

# $(C_BUILDDIR)/%.o : $(C_SUBDIR)/%.cpp $$(c_dep)
# 	$(CPP) $(CPPFLAGS) $< -o $(C_BUILDDIR)/$*.i
# 	$(PREPROC) $(C_BUILDDIR)/$*.i charmap.txt > $(C_BUILDDIR)/$*.p.i
# 	$(PREPROC) $(C_BUILDDIR)/$*.i charmap.txt | $(CXX) $(CXXFLAGS) $(CC1FLAGS) -o $(C_BUILDDIR)/$*.s
# 	@echo -e ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/$*.s
# 	$(AS) $(ASFLAGS) -o $@ $(C_BUILDDIR)/$*.s

$(SRC_ASM_BUILDDIR)/%.o: $(C_SUBDIR)/%.s
	$(PREPROC) $< charmap.txt | $(AS) $(ASFLAGS) -o $@

$(ASM_BUILDDIR)/%.o: $(ASM_SUBDIR)/%.s $$(asm_dep)
	$(PREPROC) $< charmap.txt | $(AS) $(ASFLAGS) -o $@
    
$(DATA_ASM_BUILDDIR)/%.o: $(DATA_ASM_SUBDIR)/%.s $$(data_dep)
	$(PREPROC) $< charmap.txt > $(DATA_ASM_BUILDDIR)/$*.p.i
	$(PREPROC) $< charmap.txt | $(AS) $(ASFLAGS) -o $@

$(RODATA_ASM_BUILDDIR)/%.o: $(RODATA_ASM_SUBDIR)/%.s $$(rodata_dep)
	$(PREPROC) $< charmap.txt | $(AS) $(ASFLAGS) -o $@
    
$(SOUND_ASM_BUILDDIR)/%.o: $(SOUND_ASM_SUBDIR)/%.s
	$(AS) $(ASFLAGS) -o $@ $<

$(BANK_ASM_BUILDDIR)/%.o: $(BANK_ASM_SUBDIR)/%.s
	$(AS) $(ASFLAGS) -o $@ $<
    
$(SEQ_ASM_BUILDDIR)/%.o: $(SEQ_ASM_SUBDIR)/%.s
	$(AS) $(ASFLAGS) -o $@ $<
    
$(WAVE_ASM_BUILDDIR)/%.o: $(WAVE_ASM_SUBDIR)/%.s
	$(AS) $(ASFLAGS) -o $@ $<

$(ASSETS_BUILDDIR)/logic.o: $(ASSETS_SUBDIR)/logic.salsa
	$(CPP) -E -P $(CPPFLAGS) $(ASSETS_SUBDIR)/logic.salsa -o $(ASSETS_BUILDDIR)/logic.salsa
	$(SALSA) --build $(ASSETS_BUILDDIR)/logic.salsa $(ASSETS_BUILDDIR)/logic.bin
	$(OBJCOPY) -I binary -B armv4t -O elf32-littlearm $(ASSETS_BUILDDIR)/logic.bin $(ASSETS_BUILDDIR)/logic.o

$(ASSETS_BUILDDIR)/%.o: $(ASSETS_SUBDIR)/%.salsa
	$(SALSA) --build $(ASSETS_SUBDIR)/$*.salsa $(ASSETS_BUILDDIR)/$*.bin
	$(OBJCOPY) -I binary -B armv4t -O elf32-littlearm $(ASSETS_BUILDDIR)/$*.bin $(ASSETS_BUILDDIR)/$*.o

$(ELF): $(OBJ_DIR)/ld_script.ld $(OBJS) $(C_OBJS)
	cd $(OBJ_DIR) && $(LD) $(LDFLAGS) -T $(LDSCRIPT) $(OBJS_REL) ../../tools/agbcc/lib/libgcc.a ../../tools/agbcc/lib/libc.a -o ../../$@

$(ROM): %.gba: %.elf
	$(OBJCOPY) -O binary --gap-fill=0xFF --pad-to 0xA000000 $< $@
	$(GBAFIX) $@ -p -t"$(TITLE)" -c$(GAME_CODE) -m$(MAKER_CODE) -r$(GAME_REVISION) --silent
