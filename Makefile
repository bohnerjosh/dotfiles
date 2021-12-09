SHELL=/bin/bash

SCRIPTFILES = g makecpp makehtml makejava makeenv flaskmake flaskrun pss gc
HOMEFILES = .vimrc

link: $(SCRIPTFILES) $(HOMEFILES)
	for i in $?; do \
		rm -f ~/bin/$${i}; \
		ln -s ~/.dotfiles/$${i} ~/bin/$${i}; \
		chmod 700 ~/.dotfiles/$${i}; \
	done
	rm -f ~/.vimrc && ln -s ~/.dotfiles/.vimrc ~/.vimrc
	
unlink:	
	for i in $?; do \
		rm -f ~/$${i}; \
		ls -s ~/.dotfiles/$${i} ~/$${i}; \
		chmod 700 ~/.dotfiles/$${i}; \
    	done
