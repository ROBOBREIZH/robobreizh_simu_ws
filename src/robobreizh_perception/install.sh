#Install Cuda
mkdir install/
mkdir data/
cd install
wget https://developer.download.nvidia.com/compute/cuda/11.2.2/local_installers/cuda_11.2.2_460.32.03_linux.run
sudo sh cuda_11.2.2_460.32.03_linux.run

#Install CUDNN

pip install gdown
gdown https://drive.google.com/uc?id=145G84LZnHNi6QsCGX_7OAKrunSoKoKIa
gdown https://drive.google.com/uc?id=1QjexX5lXDN4Qjf8hOfbB0iV1pjC0Yp9j
gdown https://drive.google.com/uc?id=1mQuzRPWnNKnRtsQDoAw7X8X15GMOfd9o

sudo dpkg -i libcudnn8_8.1.1.33-1+cuda11.2_amd64.deb
sudo dpkg -i libcudnn8-dev_8.1.1.33-1+cuda11.2_amd64.deb
sudo dpkg -i libcudnn8-samples_8.1.1.33-1+cuda11.2_amd64.deb
sudo ldconfig

#Download all the YOLO / OpenPose weights

cd ../data/
bash install.sh
cd ..

#Install python3.7 and dependencies
sudo apt-get install build-essential
sudo apt-get install zlib1g-dev
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.7 -y
sudo apt-get install python3-pip -y
sudo apt-get install libopencv-dev python3-opencv -y
sudo python3.7 -m pip install -r python_dependencies/requirements.txt
sudo python3.7 -m pip install torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html


#Download MaskRCNN
bash maskrcnn/install.sh
#Download YOLO
cd yolo
bash install.sh
cd ..


