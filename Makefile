SHELL=/usr/bin/bash

SCRIPTFILES = gp gc makecpp makec makehtml makejava makeenv flaskmake flaskrun pss conn
HOMEFILES = .vimrc

all: $(SCRIPTFILES) $(HOMEFILES) 
	sudo ~/.dotfiles/.helper_scripts/install
	~/.dotfiles/.helper_scripts/credential_helper.sh

	if [[ ! -d ~/bin ]]; then \
		mkdir ~/bin; \
	fi

	for i in $?; do \
		rm -f ~/bin/$${i}; \
		ln -s ~/.dotfiles/$${i} ~/bin/$${i}; \
		chmod 700 ~/.dotfiles/$${i}; \
	done
	rm -f ~/.vimrc && ln -s ~/.dotfiles/.vimrc ~/.vimrc
	
	echo -e "\nalias pym='python3 -m'" >> ~/.profile
	source ~/.profile

scripts: $(SCRIPTFILES) $(HOMEFILES)
	for i in $?; do \
		rm -f ~/bin/$${i}; \
		ln -s ~/.dotfiles/$${i} ~/bin/$${i}; \
		chmod 700 ~/.dotfiles/$${i}; \
	done
	rm -f ~/.vimrc && ln -s ~/.dotfiles/.vimrc ~/.vimrc

gitauth:
	~/.dotfiles/.helper_scripts/credential_helper.sh

clean:	
	for i in $?; do \
		rm -f ~/$${i}; \
		ls -s ~/.dotfiles/$${i} ~/$${i}; \
		chmod 700 ~/.dotfiles/$${i}; \
    done
