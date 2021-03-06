#! /bin/sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64
sudo apt-get install python3-numpy python3-dev python3-pip python3-wheel

git clone https://github.com/tensorflow/tensorflow.git
cp tensorflow1.8.patch tensorflow
cd tensorflow
git checkout v1.8.0
git apply tensorflow1.8.patch
