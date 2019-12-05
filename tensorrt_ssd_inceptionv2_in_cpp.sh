#!/bin/sh
wget http://download.tensorflow.org/models/object_detection/ssd_inception_v2_coco_2017_11_17.tar.gz
tar -zxvf ssd_inception_v2_coco_2017_11_17.tar.gz

cd samples/sampleUffSSD
make
cp config.py ../../ssd_inception_v2_coco_2017_11_17
cd ../../ssd_inception_v2_coco_2017_11_17

alias convert_to_uff='python3 /usr/lib/python3.6/dist-packages/uff/bin/convert_to_uff.py'
convert_to_uff frozen_inference_graph.pb -O NMS -p config.py

cd ../data/ssd
cp ../../ssd_inception_v2_coco_2017_11_17/frozen_inference_graph.uff sample_ssd_relu6.uff

cd ../../bin 
./sample_uff_ssd
./sample_uff_ssd --fp16
