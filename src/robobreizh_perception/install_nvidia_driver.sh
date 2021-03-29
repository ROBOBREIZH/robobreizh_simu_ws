sudo apt-get install python-pip
pip install gdown
if type "nvidia-smi" > /dev/null; then
	echo -e "\n \e[43m Nvidia-smi installed, check driver version ... \e[0m \n"; 
	driver_version=$(nvidia-smi --query-gpu=driver_version --format=csv,noheader)
	driv=$(echo ${driver_version:0:3})
	if [ "$driv" = "460" ]; then
	       echo -e "\n \e[42m You already have the NVIDIA driver 460, skipping \e[0m \n"; 
	       exit 1
	else 	
	       echo -e "\n \e[43m Downloading Nvidia driver 460 ... \e[0m \n"; 
	       gdown https://drive.google.com/uc?id=1dXT4Ra5pYMxvGSkBRy_PUkoo9EH4U10z
	       chmod +x NVIDIA-Linux-x86_64-460.67.run
	       sudo ./NVIDIA-Linux-x86_64-460.67.run
	       echo -e "\n \e[42m Done. \e[0m \n";
	fi
else
 	gdown https://drive.google.com/uc?id=1dXT4Ra5pYMxvGSkBRy_PUkoo9EH4U10z
	chmod +x NVIDIA-Linux-x86_64-460.67.run
	sudo ./NVIDIA-Linux-x86_64-460.67.run
	echo -e "\n \e[42m Done. \e[0m \n";
fi

