#!/bin/zsh

nasm -f elf32 ordena.asm -o ordena.o
gcc -m32 -c main.c -o main.o
gcc -m32 -no-pie ordena.o main.o -o main 