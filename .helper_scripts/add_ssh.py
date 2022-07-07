from os import system
from pathlib import Path

KEYFILE_PATH = str(Path.home() / ".ssh/id_ed25519")
PASSPHRASE_PATH = Path.home() / ".dotfiles/.helper_scripts/passphrase"
PASSPHRASE = ""

with open(str(PASSPHRASE), "r") as f:
    PASSPHRASE = f.read()

command = f"SSH_PASS=~/.dotfiles/.helper_scripts/process_secret.sh ssh-add {KEYFILE_PATH} <<< {PASSPHRASE}"
system(command)
