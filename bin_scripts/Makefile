SHELL=/usr/bin/bash

SCRIPTFILES = g gc makecpp makehtml makejava makeenv makeenv-flask flaskmake flaskrun pss conn
HOMEFILES = .vimrc

all: $(SCRIPTFILES) $(HOMEFILES)

	if [[ ! -d ~/.ssh ]]; then \
		mkdir ~/.ssh; \
	fi

	python3 ~/.dotfiles/.helper_scripts/process_keys.py
	chmod 600 ~/.ssh/id_ed25519.pub
	chmod 600 ~/.ssh/id_ed25519
	python3 ~/.dotfiles/.helper_scrupts/add_ssh.py
	ssh -T git@github

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

	cat>>~/.profile<<PROFILE_EOF
	env=~/.ssh/agent.env

	agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

	agent_start () {
		(umask 077; ssh-agent >| "$env")
		. "$env" >| /dev/null ; }

	agent_load_env

	# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2=agent not running
	agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

	if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
		agent_start
		ssh-add
	elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
		ssh-add
	fi

	unset env
	PROFILE_EOF


clean:	
	for i in $?; do \
		rm -f ~/$${i}; \
		ls -s ~/.dotfiles/$${i} ~/$${i}; \
		chmod 700 ~/.dotfiles/$${i}; \
    done
