from pathlib import Path

SSH_PATH = Path.home() / ".ssh/id_ed25519"
READ_PATH = Path.home() / ".dotfiles/key"

KEY_BEGIN = "-----BEGIN OPENSSH PRIVATE KEY-----"
KEY_END = "-----END OPENSSH PRIVATE KEY-----"
data = ""
with open(str(READ_PATH), "r") as f:
    data = f.read()

lines = data.split()

with open(str(SSH_PATH), "w+") as f:
    f.write(KEY_BEGIN + "\n")
    for line in lines:
        f.write(line + "\n")
    f.write(KEY_END)

READ_PATH.unlink()
