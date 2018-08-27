#!/bin/bash
sudo apt-get install lsof uniq wget fortune cowsay lolcat telnet tmux sl sort pushd popd nc netcat python perl socat lsof xargs curl fuser openssl zsh
mkdir /tmp/ubsinst
cd /tmp/ubsinst
wget ... -o ./bashrc
wget ... -o ./zshrc
wget ... -o ./tmux.conf
wget ... -o ./help.txt
wget ... -o ./help.sh
cp ./bashrc ~/.bashrc
cp ./zshrc ~/.zshrc
cp ./tmux.conf ~/.tmux.conf
cp ./help.txt ~/
cp ./help.sh ~/
chmod +x ~/help.sh
cd ~
rm -R /tmp/ubsinst