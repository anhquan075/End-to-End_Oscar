git submodule update --init --recursive --progress \
    && cd coco_caption && ./get_stanford_models.sh && cd .. && python3 setup.py build develop