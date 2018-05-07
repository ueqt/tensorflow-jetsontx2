# tensorflow-jetsontx2

TensorFlow for Nvidia Jetson TX2

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
