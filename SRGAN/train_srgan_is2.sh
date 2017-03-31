#########################################################################
# File Name: train_dcgan.sh
# Author: Rong Shenghai 
# mail: rsh914@mail.ustc.edu.cn
# Created Time: 2017年02月24日 星期五 09时51分39秒
#########################################################################
#!/bin/bash
DATETIME=`date +%Y-%m-%d-%R`
./build/tools/caffe train -solver examples/SRGAN/srgan_is2_solver.prototxt -gpu all -weights examples/SRGAN/Model/SRResNet_75s_iter_30000.caffemodel 2>&1 | tee examples/SRGAN/SRGAN_75s_is2_${DATETIME}.txt