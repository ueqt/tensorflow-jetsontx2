sudo cp /usr/local/cuda-8.0/nvvm/libdevice/libdevice.compute_50.10.bc /usr/local/cuda-8.0/nvvm/libdevice/libdevice.10.bc
cp /usr/local/cuda-8.0/nvvm/libdevice/libdevice.10.bc /usr/local/cuda-8.0/libdevice.10.bc

export TF_NEED_CUDA=1
export TF_CUDA_VERSION=9.0
export CUDA_TOOLKIT_PATH=/usr/local/cuda
export TF_CUDNN_VERSION=7
export CUDNN_INSTALL_PATH=/usr/lib/aarch64-linux-gnu/
export TF_CUDA_COMPUTE_CAPABILITIES=6.2

cd tensorflow

bazel build --config=opt --config=cuda //tensorflow/tools/pip_package:build_pip_package
bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg
