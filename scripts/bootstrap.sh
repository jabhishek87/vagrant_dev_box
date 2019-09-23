# Updating packages
apt-get update
apt-get install -y git python-minimal python-pip autojump \
python-openstackclient wget python-virtualenv zsh make gcc \
linux-headers-$(uname -r) build-essential dkms

pip install virtualenvwrapper

# wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh



# install kubectl
# curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.14.1/bin/linux/amd64/kubectl
# chmod +x ./kubectl && sudo mv ./kubectl /usr/local/bin/kubectl


# Run This commands after provision
# chsh -s `which zsh` vagrant

# /usr/share/autojump/autojump.sh on startup (~/.bashrc or ~/.zshrc)
# install docker
# sudo apt install -y docker.io
# sudo systemctl start docker
# sudo systemctl enable docker
# sudo usermod -aG docker $USER

# sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose