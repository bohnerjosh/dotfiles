SHELL=/usr/bin/bash
SCRIPTFILES = gp gc makecpp makec makehtml makejava makeenv flaskmake flaskrun pss conn makekey makeheader mpconvert netping
HOMEFILES = .vimrc

config: $(SCRIPTFILES) $(HOMEFILES) 
	if [[ ! -d ~/bin ]]; then \
		mkdir ~/bin; \
	fi

	for i in $?; do \
		ln -s ~/.dotfiles/$${i} ~/bin/$${i}; \
		chmod 700 ~/.dotfiles/$${i}; \
	done
	cp ~/.dotfiles/.vimrc ~/.vimrc
	
	echo -e "\nalias pym='python3 -m'" >> ~/.profile
	source ~/.profile
	export PATH=~/bin:${PATH}

scripts:
	for i in $?; do \ 
		rm -rf ~/bin/$${i} \
		ln -s ~/.dotfiles/$${i} ~/bin/$${i}; \
		chmod 700 ~/.dotfiles/$${i}; \
	done
	cp ~/.dotfiles/.vimrc ~/.vimrc

install: $(SCRIPTFILES) $(HOMEFILES) 
	sudo ~/.dotfiles/.helper_scripts/install

gitauth:
	~/.dotfiles/.helper_scripts/credential_helper.sh

clean:	
	for i in $?; do \
		rm -f ~/$${i}; \
    done
