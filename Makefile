CC=m68k-atari-mint-gcc

.PHONY: clean default

default: ideboo14.bin ideboo14.lst ideboo16.bin ideboo16.lst

clean:
	rm -f ideboo??.o ideboo??.bin ideboo??.lst

ideboo14.o: ideboot.S
	$(CC) -DTOS104 -c -o $@ $<

ideboo16.o: ideboot.S
	$(CC) -DTOS16x -c -o $@ $<

%.bin: %.o
	m68k-atari-mint-objcopy -O binary $< $@

%.lst: %.o
	m68k-atari-mint-objdump -S $< > $@
