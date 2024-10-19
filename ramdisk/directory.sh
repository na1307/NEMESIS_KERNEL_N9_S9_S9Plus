#!/usr/bin/bash

for d in "SM-G960F" "SM-G960N" "SM-G965F" "SM-N960F"
do
    cd $d/ramdisk
    mkdir -p acct cache config data dev lib/modules mnt proc storage sys system vendor
    cd ../..
done
