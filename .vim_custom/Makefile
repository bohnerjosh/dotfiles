FILENAME=~/.vimrc

makec: $(FILENAME)
	gcc -m32 $$FILENAME -g -o $$FILENAME.out -fmax-errors=5 && ./$$FILENAME.out

makecthreaded: $(FILENAME)
	gcc -m32 -lpthread $$FILENAME -g -o $$FILENAME.out -fmax-errors=5 && ./$$FILENAME.out

makecpp: $(FILENAME)
	g++ -m32 $$FILENAME -g -o $$FILENAME.out -fmax-errors=5 && ./$$FILENAME.out
