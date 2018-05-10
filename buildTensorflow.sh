sudo cp /usr/local/cuda-8.0/nvvm/libdevice/libdevice.compute_50.10.bc /usr/local/cuda-8.0/nvvm/libdevice/libdevice.10.bc
sudo cp /usr/local/cuda-8.0/nvvm/libdevice/libdevice.10.bc /usr/local/cuda-8.0/libdevice.10.bc

cd tensorflow

bazel build --config=opt --local_resouces 3072,4.0,1.0 --verbose_failures --config=cuda //tensorflow/tools/pip_package:build_pip_package
bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg
