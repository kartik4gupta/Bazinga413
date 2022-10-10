all: Assignment.o
	gcc -m64 -no-pie Assignment.o -o test
Assignment.o: Assignment.asm
	yasm -f elf64 -g dwarf2 -o Assignment.o Assignment.asm

