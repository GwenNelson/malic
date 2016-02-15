#!/bin/sh
cd dtrace-118.1/
mkdir obj sym dst
xcodebuild install -target ctfconvert -target ctfdump -target ctfmerge ARCHS="x86_64" SRCROOT=$PWD OBJROOT=$PWD/obj SYMROOT=$PWD/sym DSTROOT=$PWD/dst
sudo ditto dst/usr/local /usr/local
cd ..

