#!/bin/sh
pip3 install pycuda
cd samples/python/uff_ssd
mkdir build && cd build && cmake .. && make && cd ..
python3 detect_objects.py -p 32 -b 1 -o ../../../fp32.jpg ../../../image1.jpg
python3 detect_objects.py -p 16 -b 1 -o ../../../fp16.jpg ../../../image1.jpg
