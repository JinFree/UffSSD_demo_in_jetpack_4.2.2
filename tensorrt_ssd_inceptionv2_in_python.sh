#!/bin/sh
pip3 install pycuda
cd samples/python/uff_ssd/plugin
mkdir build && cd build && cmake .. && make && cd ..
python3 detect_objects.py -p 32 -b 1 ../../../solidWhiteRight.jpg
python3 detect_objects.py -p 16 -b 1 ../../../solidWhiteRight.jpg
