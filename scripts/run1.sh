#!/bin/bash

#run get_data.sh to get all the relevant data
#add -gpuid 0 to use GPU
#add -cudnn 1 to use cudnn


#LSTM-CharCNN-Small
CUDA_VISIBLE_DEVICES=0 th main.lua -print_every 50 -time 1 -data_dir data/ptb -EOS '+' -savefile ptb-char-small -use_chars 1 -use_words 0 -char_vec_size 15 -rnn_size 300 -highway_layers 1 -kernels '{1,2,3,4,5,6}' -feature_maps '{25,50,75,100,125,150}' -gpuid 0 -cudnn 1