# ideboot
IDE Autoboot patch for TOS 1.06, 1.06 and 1.62

Copyright (c) 2020-2021, Christian Zietz <czietz@gmx.net>

## Usage
Find a ROM image of TOS 1.04, 1.06 or 1.62. Edit the following file:
- for TOS 1.04: `idepatch.fil`
- for TOS 1.06: `idepa106.fil`
- for TOS 1.62: `idepa162.fil`

... in a text editor, entering the file name of the ROM image, selecting
the TOS language (required only for TOS 1.04) and modifying the output
format, if needed.

Then, depending on the TOS version run one of the following commands:

`TOSPATCH.TTP idepatch.fil`

`TOSPATCH.TTP idepa106.fil`

`TOSPATCH.TTP idepa162.fil`

... and you will get a patched TOS ROM image.

## Notes
The code uses a short timeout for IDE devices, in order not to delay
booting too much when no IDE device is connected. The timeout is more
than sufficient for modern devices such as IDE/SD adapters, CF cards,
IDE DOMs, etc. Booting from a mechanical harddisk, that takes tens of
seconds to spin up, might only be possible after pressing the reset
button.
