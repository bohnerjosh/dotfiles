SHELL=/usr/bin/bash

SCRIPTFILES = g gc makecpp makehtml makejava makeenv flaskmake flaskrun pss
HOMEFILES = .vimrc

scripts: $(SCRIPTFILES) $(HOMEFILES)
	mkdir ~/bin
	for i in $?; do \
		rm -f ~/bin/$${i}; \
		ln -s ~/.dotfiles/$${i} ~/bin/$${i}; \
		chmod 700 ~/.dotfiles/$${i}; \
	done
	rm -f ~/.vimrc && ln -s ~/.dotfiles/.vimrc ~/.vimrc
	
install-all:
	sudo apt-get install manpages-dev
	sudo apt install python3-pip -y 	
	mkdir ~/bin
	for i in $?; do \
		rm -f ~/bin/$${i}; \
		ln -s ~/.dotfiles/$${i} ~/bin/$${i}; \
		chmod 700 ~/.dotfiles/$${i}; \
	done
	rm -f ~/.vimrc && ln -s ~/.dotfiles/.vimrc ~/.vimrc
	echo -e "\nalias pym='python3 -m'" >> ~/.profile
	source ~/.profile
	pip install virtualenv

clean:	
	for i in $?; do \
		rm -f ~/$${i}; \
		ls -s ~/.dotfiles/$${i} ~/$${i}; \
		chmod 700 ~/.dotfiles/$${i}; \
    done
