#!/bin/sh

#This instructions are based on the README at following location https://mafft.cbrc.jp/alignment/software/linuxportable.html

rm -rf sources
mkdir sources && cd sources

#download the linux binary
wget -O mafft.zip https://mafft.cbrc.jp/alignment/software/mafft-7.450-win64-signed.zip

#unzip mafft
rm -rf mafft-win
unzip mafft.zip

#the executable is in a folden names sources/mafft-linux64
#so move to linux folder to make more standard
cd ..
rm -rf release
cp -rf sources/mafft-win release

