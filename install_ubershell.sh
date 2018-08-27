#!/bin/bash
sudo apt-get install lsof uniq wget fortune cowsay lolcat telnet tmux sl sort pushd popd nc netcat python perl socat lsof xargs curl fuser openssl zsh
mkdir /tmp/ubsinst
cd /tmp/ubsinst
wget https://raw.githubusercontent.com/DennisHeine/UberShell/master/.bashrc -o ./bashrc
wget https://raw.githubusercontent.com/DennisHeine/UberShell/master/.zshrc -o ./zshrc
wget https://raw.githubusercontent.com/DennisHeine/UberShell/master/.tmux.conf -o ./tmux.conf
wget https://raw.githubusercontent.com/DennisHeine/UberShell/master/help.txt -o ./help.txt
wget https://raw.githubusercontent.com/DennisHeine/UberShell/master/help.sh -o ./help.sh
cp ./bashrc ~/.bashrc
cp ./zshrc ~/.zshrc
cp ./tmux.conf ~/.tmux.conf
cp ./help.txt ~/
cp ./help.sh ~/
chmod +x ~/help.sh
cd ~
rm -R /tmp/ubsinst