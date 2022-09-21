FILENAME=~/.vimrc
CXX="g++ -g -std=c++17 -fmax-errors=5"
C="gcc -g -std=c17 -fmax-errors=5"
makec: $(FILENAME)
	@echo "***Compiling and running $$FILENAME***"
	@$$C -o $$FILENAME.out && ./$$FILENAME.out

makecthreaded: $(FILENAME)
	@echo "***Compiling and running $$FILENAME***"
	@$$C -lpthread -o $$FILENAME.out -fmax-errors=5 && ./$$FILENAME.out

makecpp: $(FILENAME)
	@echo "***Compiling and running $$FILENAME***"
	@$$CXX -o $$FILENAME.out && ./$$FILENAME.out
