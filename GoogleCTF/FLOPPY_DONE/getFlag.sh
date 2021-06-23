#!/bin/bash

curl https://storage.googleapis.com/gctf-2018-attachments/4e69382f661878c7da8f8b6b8bf73a20acd6f04ec253020100dfedbd5083bb39 -o Floppy.zip  2>/dev/null
unzip -o -qq  Floppy.zip 
binwalk -eq foo.ico
cat _*/driver.txt | grep CTF | while read  line; do echo $line; done 
rm -r _*
