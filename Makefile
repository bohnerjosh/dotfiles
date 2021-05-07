SHELL=/bin/bash

SCRIPTFILES = g makecpp makehtml makejava makeenv flaskmake flaskrun
HOMEFILES = .vimrc

link: $(SCRIPTFILES)
	cd ~/ && mkdir bin
	for i in $?; do \
		rm -f ~/bin/$${i}; \
		ln -s ~/.scripts/$${i} ~/bin/$${i}; \
		chmod 700 ~/.scripts/$${i}; \
	
	for i in $?; do \
		rm -f ~/$${i}; \
		ls -s ~/.scripts/$${i} ~/$${i}; \
		chmod 700 ~/.scripts/$${i}; \
    
