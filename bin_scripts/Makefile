SHELL=/usr/bin/bash

SCRIPTFILES = gp gc makecpp makehtml makejava makeenv makeenv-flask flaskmake flaskrun pss conn
HOMEFILES = .vimrc

all: $(SCRIPTFILES) $(HOMEFILES)

	if [[ ! -d ~/.ssh ]]; then \
		mkdir ~/.ssh; \
	fi
	eval "$(ssh-agent -s)"
	python3 ~/.dotfiles/.helper_scripts/process_keys.py
	chmod 600 ~/.ssh/id_ed25519.pub
	chmod 600 ~/.ssh/id_ed25519
	python3 ~/.dotfiles/.helper_scripts/add_ssh.py
	ssh -T git@github.com 2>/dev/null

	if [[ ! -d ~/bin ]]; then \
		mkdir ~/bin; \
	fi

	for i in $?; do \
		rm -f ~/bin/$${i}; \
		ln -s ~/.dotfiles/bin_scripts/$${i} ~/bin/$${i}; \
		chmod 700 ~/.dotfiles/bin_scripts/$${i}; \
	done
	rm -f ~/.vimrc && ln -s ~/.dotfiles/bin_scripts/.vimrc ~/.vimrc
	
	echo -e "\nalias pym='python3 -m'" >> ~/.profile
	source ~/.profile

	~/.dotfiles/.helper_scripts/ssh_access_profile.sh

scripts: $(SCRIPTFILES) $(HOMEFILES)
	for i in $?; do \
		rm -f ~/bin/$${i}; \
		ln -s ~/.dotfiles/bin_scripts/$${i} ~/bin/$${i}; \
		chmod 700 ~/.dotfiles/bin_scripts/$${i}; \
	done
	rm -f ~/.vimrc && ln -s ~/.dotfiles/bin_scripts/.vimrc ~/.vimrc

clean:	
	for i in $?; do \
		rm -f ~/$${i}; \
		ls -s ~/.dotfiles/$${i} ~/$${i}; \
		chmod 700 ~/.dotfiles/$${i}; \
    done
