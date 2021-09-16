FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

# install basics
RUN apt-get update -y \
    && apt-get install -y apt-utils git curl ca-certificates bzip2 cmake tree htop bmon iotop g++ \
    && apt-get install -y libglib2.0-0 libsm6 libxext6 libxrender-dev libyaml-dev vim zsh wget htop tmux

# Install Miniconda
RUN curl -so /miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && chmod +x /miniconda.sh \
    && /miniconda.sh -b -p /miniconda \
    && rm /miniconda.sh

ENV PATH=/miniconda/bin:$PATH

# Create a Python 3.7 environment
RUN /miniconda/bin/conda install -y conda-build \
    && /miniconda/bin/conda create -y --name py37 python=3.7 \
    && /miniconda/bin/conda clean -ya 

ENV CONDA_DEFAULT_ENV=py37
ENV CONDA_PREFIX=/miniconda/envs/$CONDA_DEFAULT_ENV
ENV PATH=$CONDA_PREFIX/bin:$PATH
ENV CONDA_AUTO_UPDATE_CONDA=false

RUN conda install -y ipython h5py nltk joblib jupyter pandas scipy
RUN pip install requests ninja cython yacs>=0.1.8 numpy>=1.19.5 cython matplotlib opencv-python tqdm 
    
# install pycocotools
RUN conda install -c conda-forge pycocotools

# install cityscapesScripts
RUN python -m pip install cityscapesscripts

# Install latest PyTorch 1.7.1
RUN conda install pytorch==1.7.1 torchvision==0.8.2 torchaudio==0.7.2 cudatoolkit=10.1 -c pytorch \
    && conda clean -ya \
    && conda install -y -c conda-forge timm einops \
    && conda install -y -c conda-forge pycocotools 

#RUN python src/setup.py build develop
