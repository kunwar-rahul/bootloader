#make sw dir
sudo mkdir $HOME/sw
cd $HOME/sw

#install git
sudo apt -y install git

#install vscode
sudo curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get update
sudo apt-get -y install code # or code-insiders

#install JDK10
sudo wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/10.0.1+10/fb4372174a714e6b8c52526dc134031e/jdk-10.0.1_linux-x64_bin.tar.gz
sudo tar -C /usr/local --strip-components 1 -xf node-v8.11.1-linux-x64.tar.xz
sudo rm jdk-10.0.1_linux-x64_bin.tar.gz

#install nodejs
sudo wget https://nodejs.org/dist/v8.11.1/node-v8.11.1-linux-x64.tar.xz
sudo tar -C /usr/local --strip-components 1 -xf node-v8.11.1-linux-x64.tar.xz
sudo rm node-v8.11.1-linux-x64.tar.xz

#install vim
sudo apt -y install vim
