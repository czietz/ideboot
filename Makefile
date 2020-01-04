CC=m68k-atari-mint-gcc

.PHONY: clean default

default: ideboot.bin ideboot.lst

clean:
	rm -f ideboot.o ideboot.bin ideboot.lst

%.bin: %.o
	m68k-atari-mint-objcopy -O binary $< $@

%.lst: %.o
	m68k-atari-mint-objdump -S $< > $@
