#From: https://moreless.medium.com/install-python-3-6-on-ubuntu-16-04-28791d5c2167
#Obly necessary on Ubuntu16
#Prerequesties
sudo apt-get install build-essential
sudo apt-get install zlib1g-dev
sudo apt-get install libopencv-dev

cd /opt
wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz
tar -xvf Python-3.6.3.tgz
cd Python-3.6.3
./configure
make 
make install
