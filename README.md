# ideboot
IDE Autoboot patch for TOS 1.04, 1.06, 1.62, and for KAOS/EOS

Copyright (c) 2020-2025, Christian Zietz <czietz@gmx.net>

## Usage
Find a ROM image of TOS 1.04, 1.06 or 1.62. For KAOS/EOS, only the builds
dated June 8, 1994 and September 12, 1995 are supported. If unsure, please
check the build date displayed on the KAOS/EOS setup screen.

Edit the following file:

- for TOS 1.04: `idepatch.fil`
- for TOS 1.06: `idepa106.fil`
- for TOS 1.62: `idepa162.fil`
- for KAOS June 8 1994: `idepk143.fil`
- for EOS Sept 12 1995: `idep_eos.fil`

... in a text editor, entering the file name of the ROM image, selecting
the TOS language (required only for TOS 1.04) and modifying the output
format, if needed.

Then, depending on the TOS version run one of the following commands:

`TOSPATCH.TTP idepatch.fil`

`TOSPATCH.TTP idepa106.fil`

`TOSPATCH.TTP idepa162.fil`

`TOSPATCH.TTP idepk143.fil`

`TOSPATCH.TTP idep_eos.fil`

... and you will get a patched TOS ROM image.

## Notes
The code uses a short timeout for IDE devices, in order not to delay
booting too much when no IDE device is connected. The timeout is more
than sufficient for modern devices such as IDE/SD adapters, CF cards,
IDE DOMs, etc. Booting from a mechanical harddisk, that takes tens of
seconds to spin up, might only be possible after pressing the reset
button.

For French TOS 1.04 users only: As the French translation takes up too much
ROM space, the default DESKTOP.INF (that is _only_ used when no DESKTOP.INF is
found on the boot drive) is modified when applying the patch. The entries for
floppy drive B: and virtual cartridge drive c: are removed. These icons can be
added again manually, if needed.
