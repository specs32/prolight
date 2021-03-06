# Projekt
# ============================================================
PROJECT = test_blink
SOURCES = test_blink.c

OBJS = $(SOURCES:.c=.o)

# Micorcontroller / serielle Schnittstelle
# ============================================================
ARCH          = atmega32u4
F_CPU         = 8000000UL

PROGRAMMER_ID = usbasp
BAUDRATE      = 57600

# Pfade
# ============================================================
AVR_PATH       = /usr/bin
AVRDUDE_CONFIG = /etc/avrdude.conf

# Programme
# ============================================================
CC         = $(AVR_PATH)/avr-gcc
LD         = $(AVR_PATH)/avr-gcc
OBJCOPY    = $(AVR_PATH)/avr-objcopy
OBJDUMP    = $(AVR_PATH)/avr-objdump

AVRDUDE    = $(AVR_PATH)/avrdude



# Schalter
# ============================================================
CFLAGS   ?= -Os

# Schalter für scanf/printf
# -------------------------
LDFLAGS  += -Wl,-u,vfprintf -Wl,-u,vfscanf 
LDLIBS   += -lprintf_flt -lscanf_flt -lm

# Schalter für Microcontroller
# ----------------------------
CPPFLAGS  += -mmcu=$(ARCH) -DF_CPU=$(F_CPU) -I./include
LDFLAGS   += -mmcu=$(ARCH)

# Schalter für Sprachversion
# --------------------------
CFLAGS   += -std=gnu99

# Schalter für warnings
# ---------------------
CFLAGS  += -Wall

# Spezielle Warnungen
CFLAGS  += -Wstrict-prototypes -Wmissing-prototypes \
           -Wmissing-declarations -Wredundant-decls \
           -Wnested-externs -Wbad-function-cast \
           -Wshadow -Wpointer-arith \
           -Wsign-compare -Wfloat-equal \
           -Wunreachable-code  \
           -Wwrite-strings -Wconversion \
           -Waggregate-return  -Winline -Wcast-align

# Schalter um Platz zu sparen
# ---------------------------
# Strukturen packen
CFLAGS  += -fpack-struct

# Unbenutzten Code entfernen
CFLAGS  += -ffunction-sections -fdata-sections 
LDFLAGS += -Wl,--gc-sections

# Explizite Regeln
# ============================================================
all: $(PROJECT).hex
	@echo "done"

$(PROJECT).elf: $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $^ $(LDLIBS)

install:
	
	$(AVRDUDE) -p $(ARCH) -c $(PROGRAMMER_ID) -B10 -U flash:w:$(PROJECT).hex

clean:
	rm -f $(OBJS) $(PROJECT).elf $(PROJECT).hex

# Muster Regeln
# ============================================================
%.hex: %.elf
	$(OBJCOPY) -O ihex -R .eeprom $< $@

%.lst: %.elf
	$(OBJDUMP) -h -S -t -C $< > $@

%.lst: %.o
	$(OBJDUMP) -h -S -t -C $< > $@

%.E:%.c
	$(CC) $(CPPFLAGS) -E -o $@ $<

%.s:%.c
	$(CC) $(CPPFLAGS) -S -o $@ $<