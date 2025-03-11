#!/bin/bash

# Author: William Dam 
# CWID: 884616384

echo "Compiling the driver file..."
gcc -c -m64 -Wall -fno-pie -no-pie -o driver.o driver.c -std=c17

echo "Compiling the manager file..."
nasm -f elf64 -o manager.o manager.asm

echo "Linking the object files..."
gcc -m64 -no-pie -o program driver.o manager.o

echo "Running midtermprogramming..."
./midtermprogramming
