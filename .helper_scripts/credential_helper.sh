
echo "What is your github username? "
read USERNAME
git config --global user.name $USERNAME

echo "What is your github email? "
read EMAIL
git config --global user.email $EMAIL

echo "What is your Github Access Token? "
read TOKEN
echo "https://$USERNAME:$TOKEN@github.com" >> ~/.git-credentials
git config credential.helper store
