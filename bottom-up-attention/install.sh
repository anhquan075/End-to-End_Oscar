export REPO_ROOT='/src/bottom-up-attention'

pip3 install 2to3 && 2to3 $REPO_ROOT/ -w

cd $REPO_ROOT/lib
make

cd $REPO_ROOT/caffe

make -j8 && make pycaffe

mkdir -p $REPO_ROOT/data/faster_rcnn_models && cd $REPO_ROOT/data/faster_rcnn_models
wget https://storage.googleapis.com/up-down-attention/resnet101_faster_rcnn_final.caffemodel