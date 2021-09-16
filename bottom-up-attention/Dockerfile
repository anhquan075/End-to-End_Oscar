FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

ENV DEBIAN_FRONTEND=noninteractive 
# install basics
RUN apt-get update -y \
    && apt-get install -y apt-utils git curl ca-certificates bzip2 cmake tree htop bmon iotop g++ \
    && apt-get install -y libglib2.0-0 libsm6 libxext6 libxrender-dev libyaml-dev vim zsh wget htop tmux

RUN apt-get install -y python3-pip \
    && apt-get install libleveldb-dev libsnappy-dev libhdf5-serial-dev -y \
    && apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev -y \
    && apt-get install protobuf-compiler libprotobuf-dev -y \
    && apt-get -y install libopenblas-dev libboost-all-dev libfaac-dev \
    && apt-get -y install libopencv-dev python-opencv libopenblas-dev libatlas-base-dev

RUN pip3 install setuptools Cython 2to3\
    && apt-get install -y python3-opencv

WORKDIR /src/bottom-up-attention