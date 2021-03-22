#rm -rf darknet
cd ~/
sudo git clone https://github.com/AlexeyAB/darknet.git
sudo cp Makefile darknet/Makefile
cd darknet
sudo make clean
sudo make


