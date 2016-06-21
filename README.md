PCB layouting workshop
======================

These are the example files and a short presentation for an
introduction to printed circuit board layouting with KiCad.

The design is loosely based on [Larry Ogrodnek's nametag](http://analogmachines.com/p/nametag/build/),
with some modifications and enhancements.
There's both through-hole and SMD versions.
The THT version is designed for 5mm LEDs, thus making it very
large. A new 3mm version is being worked on.

The software for the microcontroller is in [a separate project](https://github.com/nuess0r/am-nametag).

You can also find an example for a LED dot matrix display tag.
(currently broken, the pinout is wrong)


Description
-----------

The circuit is grouped in 4 parts:
- 5 LED blocks
- Transistor drivers for each block (based on 2N7002 N-FETs)
- ATtiny13 microcontoller
- CR2032 battery

Each block consists of a total of 20 LEDs in parallel, which can be
soldered on as desired.

It should be noted that the CR2032 has a high internal resistance
and can only deliver small currents, up to about 40mA.

The current-limiting resistors for each block should thus be
adjusted accordingly, to prevent brown-out of the MCU.
Note that the transistors also have a relatively high
on resistance.

If a Li-Ion or LiPo battery is used instead of the button
cell, much higher currents are possible.

The parts are fairly standard and can be ordered from any
supplier, such as Farnell, DigiKey, Reichelt, ...


License
-------

This documentation is copyright © 2016 by Chaostreff Basel and
describes Open Hardware and is licensed under the CERN OHL v. 1.2.
Please see the the [LICENSE](LICENSE) file for applicable conditions.

The author's contact information can be found in [AUTHORS](AUTHORS).
