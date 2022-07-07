from pathlib import Path

GITHUB_SSH_PATH = Path.home() / ".ssh/id_ed25519.pub"
OPENSSH_KEY_PATH = Path.home() / ".ssh/id_ed25519"
PASSPHRASE_PATH = Path.home() / ".dotfiles/.helper_scripts/passphrase"

KEY_BEGIN = "-----BEGIN OPENSSH PRIVATE KEY-----"
KEY_END = "-----END OPENSSH PRIVATE KEY-----"
data = ""

SYM_KEY = input("Paste your SSH Private key for github here: ")
PRIVATE_KEY = input("Paste your OpenSSH Private key here: ")
PASSPHRASE = input("Paste yoru Private key's passphrase here: ")

lines = PRIVATE_KEY.split()

with open(str(OPENSSH_KEY_PATH), "w+") as f:
    f.write(KEY_BEGIN + "\n")
    for line in lines:
        f.write(line + "\n")
    f.write(KEY_END)

with open(str(GITHUB_SSH_PATH). "w+") as f:
    f.write(SYM_LEY)

with open(str(PASSPHRASE_PATH), "w+") as f:
    f.write(PASSPHRASE)
