SHELL=/bin/bash

SCRIPTFILES = g makecpp makehtml makejava makeenv flaskmake flaskrun
HOMEFILES = .vimrc

link: $(SCRIPTFILES)
	for i in $?; do \
		rm -f ~/bin/$${i}; \
		ln -s ~/.dotfiles$${i} ~/bin/$${i}; \
		chmod 700 ~/.dotfiles/$${i}; \
	done
	
	for i in $?; do \
		rm -f ~/$${i}; \
		ls -s ~/.dotfiles/$${i} ~/$${i}; \
		chmod 700 ~/.dotfiles/$${i}; \
    	done
