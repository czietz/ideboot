CC=m68k-atari-mint-gcc

.PHONY: clean default

default: ideboo14.bin ideboo14.lst ideboo16.bin ideboo16.lst ideb_eos.bin ideb_eos.lst idebk143.bin idebk143.lst

clean:
	rm -f ideb????.o ideb????.bin ideb????.lst

ideboo14.o: ideboot.S
	$(CC) -DTOS104 -c -o $@ $<

ideboo16.o: ideboot.S
	$(CC) -DTOS16x -c -o $@ $<

ideb_eos.o: ideboot.S
	$(CC) -DKAOS_950912 -c -o $@ $<

idebk143.o: ideboot.S
	$(CC) -DKAOS_940608 -c -o $@ $<

%.bin: %.o
	m68k-atari-mint-objcopy -O binary $< $@

%.lst: %.o
	m68k-atari-mint-objdump -S $< > $@
