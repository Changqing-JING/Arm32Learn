main.elf: src/main.c
	arm-linux-gnueabihf-gcc -static -o build/$@ $<

run: main.elf
	qemu-arm -L /usr/arm-linux-gnueabihf ./build/main.elf