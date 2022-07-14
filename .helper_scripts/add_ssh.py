from os import system
from pathlib import Path

KEYFILE_PATH = str(Path.home() / ".ssh/id_ed25519")

command = f"cd ~/.dotfiles/.helper_files && DISPLAY=1 SSH_ASKPASS='./process_secret.sh' ssh-add {KEYFILE_PATH} < /dev/null 2>/dev/null"
system(command)
