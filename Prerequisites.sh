#!/bin/sh
#pip3 install pycuda
cp -r /usr/src/tensorrt/samples samples
cd samples/sampleUffSSD
make
cd ../../

wget http://download.tensorflow.org/models/object_detection/ssd_inception_v2_coco_2017_11_17.tar.gz
tar -zxvf ssd_inception_v2_coco_2017_11_17.tar.gz
cd ssd_inception_v2_coco_2017_11_17


cp /usr/lib/python3.6/dist-packages/uff/bin/convert_to_uff.py 
/usr/lib/python3.6/dist-packages/uff/bin
