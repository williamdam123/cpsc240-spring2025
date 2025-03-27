# !/bin/bash

# Author information
#   Author name : William Dam
#   Author email: wdam1@csu.fullerton.edu
#   Author section: 240-3
#   Author CWID : 884616384

echo "Compiling the main file..."
gcc -c -m64 -Wall -fno-pie -no-pie -o main.o main.c -std=c17

echo "Compiling the executive file..."
nasm -f elf64 -o executive.o executive.asm

echo "Compiling the show_array file..."
nasm -f elf64 -o show_array.o show_array.asm

echo "Compiling the normalize_array file..."
nasm -f elf64 -o normalize_array.o normalize_array.asm

echo "Compiling the fill_random_array file..."
nasm -f elf64 -o fill_random_array.o fill_random_array.asm

echo "Compiling the isnan file..."
nasm -f elf64 -o isnan.o isnan.asm

echo "Compiling the sort file..."
gcc -c -m64 -Wall -fno-pie -no-pie -o sort.o sort.c -std=c17

echo "Linking the object files..."
gcc -m64 -no-pie -o hw5.out -std=c17 show_array.o main.o executive.o fill_random_array.o normalize_array.o isnan.o sort.o

echo "Running hw4..."
./hw4.out
