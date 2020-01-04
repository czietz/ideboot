# ideboot
IDE Autoboot patch for TOS 1.04
Copyright (c) 2020, Christian Zietz <czietz@gmx.net>

## Usage
Find a ROM image of TOS 1.04. In `idepatch.fil` enter its file name,
select the TOS language and modify the output format, if needed.

Then, run...
`TOSPATCH.TTP idepatch.fil`
... and you get a patched TOS ROM image.

## Notes
The code uses a short timeout for IDE devices, in order not to delay
booting too much when no IDE device is connected. The timeout is more
than sufficient for modern devices such as IDE/SD adapters, CF cards,
IDE DOMs, etc. Booting from a mechanical harddisk, that takes tens of
seconds to spin up, might only be possible after pressing the reset
button.
