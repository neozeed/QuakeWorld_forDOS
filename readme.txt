This is pretty simple, the 'qw' directory contains the QuakeWorld client, Quake is the old standalone Quake game, and WAT is the Wattcp package.

The Wattcp package is a bit touchy, but if you look for the djgpp.mak files, you can see that right now it is rigged to cross compile, and that I don't have nasm32 on my machine, so I've commented that build portion out, but the binary it wants to generate is already there.  Wattcp is BIG, and it takes a LONG while to compile on MS-DOS, if possible I'd recommend cross compiling... My four processor machine can build it in under three seconds (make -j 4) ... I'm sure to generate the 7MB debug library it'd take a WHILE.

I've been building these with Gcc 2.7.21 & 2.95.. .Not sure if other versions work so you are on your own there. I've tested the exe's under Qemu 1.0.1 for the PowerPC Mac, on OS X 10.5.8

These include the assembly portioins so you will need a working assembler (gas) but if you are using GCC you probably already have gas as it is in binutils.

I've updated this to allow me to cross build from OS X.., but changing things liek CC/LD/AR into the native versions should be trivial.  Remember to extract in some manner to make text files text, otherwise gcc may freak out.

Happy hacking


Jason / 3/16/2012
