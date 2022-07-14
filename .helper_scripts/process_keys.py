from pathlib import Path
from os import system

GITHUB_SSH_PATH = Path.home() / ".ssh/id_ed25519.pub"
OPENSSH_KEY_PATH = Path.home() / ".ssh/id_ed25519"
PASSPHRASE_PATH = Path.home() / ".dotfiles/.helper_scripts/passphrase"

KEY_BEGIN = "-----BEGIN OPENSSH PRIVATE KEY-----"
KEY_END = "-----END OPENSSH PRIVATE KEY-----"
data = ""

GIT_USERNAME = input("What is your Github Username? ")
GIT_EMAIL = input("What is your Github email? ")
SYM_KEY = input("Paste your SSH Private key for github here: ")
PRIVATE_KEY = input("Paste your OpenSSH Private key here: ")
PASSPHRASE = input("Paste your Private key's passphrase here: ")

lines = PRIVATE_KEY.split()

with open(str(OPENSSH_KEY_PATH), "w+") as f:
    f.write(KEY_BEGIN + "\n")
    for line in lines:
        f.write(line + "\n")
    f.write(KEY_END + "\n")

with open(str(GITHUB_SSH_PATH), "w+") as f:
    f.write(SYM_KEY + "\n")

with open(str(PASSPHRASE_PATH), "w+") as f:
    f.write(PASSPHRASE)

system(f"git config --global user.name {GIT_USERNAME}")
system(f"git config --global user.email {GIT_EMAIL}")
