#rm -rf darknet
cd ~/
git clone https://github.com/AlexeyAB/darknet.git
cd -
cp ./Makefile ~/darknet/Makefile
cd ~/darknet
sudo make clean
sudo make


