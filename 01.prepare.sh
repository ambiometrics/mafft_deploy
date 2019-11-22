#!/bin/sh

#This instructions are based on the README at following location https://mafft.cbrc.jp/alignment/software/linuxportable.html

rm -rf sources
mkdir sources && cd sources

#download the linux binary
wget -O mafft.tgz https://mafft.cbrc.jp/alignment/software/mafft-7.450-linux.tgz

#unzip mafft
rm -rf mafft
mkdir mafft
tar xfvz mafft.tgz -C mafft --strip-components 1

#the executable is in a folden names sources/mafft-linux64
#so move to linux folder to make more standard
cd ..
rm -rf release
cp -rf sources/mafft release

