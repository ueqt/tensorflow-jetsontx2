# tensorflow-jetsontx2

TensorFlow for Nvidia Jetson TX2

## GPU info

```bash
cd /usr/local/cuda/samples/1_Utilities/deviceQuery
./deviceQuery
```

## configure

tensorflow/configure.py

## check TensorRT version

```bash
dpkg -l | grep TensorRT
```

## For Python 3.5

```bash
sh createSwapfile.sh -d ~/ -s 8
sh installPrerequisites.sh
sh cloneTensorflow.sh
sh setTensorflowEnv.sh
sh buildTensorflow.sh
sh packageTensorflow.sh
pip3 install $HOME/wheel file
```

## locale.Error: unsupported locale setting

```bash
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
sudo dpkg-reconfigure locales
```

## quick way

```bash
# https://developer.nvidia.com/embedded/jetpack
# install JetPack 3.2 first
sh createSwapfile.sh -d ~/ -s 8
curl -O https://raw.githubusercontent.com/Davidnet/JetsonTFBuilds/master/official/tensorflow-1.6.0-cp35-cp35m-linux_aarch64.whl
pip3 install tensorflow-1.6.0-cp35-cp35m-linux_aarch64.whl
```