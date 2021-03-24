pip install gdown
driver_version=$(nvidia-smi --query-gpu=driver_version --format=csv,noheader)
driv=$(echo ${driver_version:0:3})
if [ "$driv" = "460" ]; then
       echo -e "\n \e[42mYou already have the NVIDIA driver 460, skipping ... \e[0m \n"; 
       exit 1
else 
       gdown https://drive.google.com/uc?id=1dXT4Ra5pYMxvGSkBRy_PUkoo9EH4U10z
       chmod +x NVIDIA-Linux-x86_64-460.67.run
       sudo ./NVIDIA-Linux-x86_64-460.67.run
fi

