FILENAME=~/.vimrc

makec: $(FILENAME)
	@echo "***Compiling and running $$FILENAME***"
	@gcc -m32 $$FILENAME -g -o $$FILENAME.out -fmax-errors=5 && ./$$FILENAME.out

makecthreaded: $(FILENAME)
	@echo "***Compiling and running $$FILENAME***"
	@gcc -m32 -lpthread $$FILENAME -g -o $$FILENAME.out -fmax-errors=5 && ./$$FILENAME.out

makecpp: $(FILENAME)
	@echo "***Compiling and running $$FILENAME***"
	@g++ -m32 $$FILENAME -g -o $$FILENAME.out -fmax-errors=5 && ./$$FILENAME.out
