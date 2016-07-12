asm: asm.o
	ld -o asm asm.o

asm.o: asm.s
	as -o asm.o asm.s

clean:
	rm *.o asm
