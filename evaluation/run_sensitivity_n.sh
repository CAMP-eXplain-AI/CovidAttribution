#!/bin/bash

PATH_TO_IMAGES="/home/ubuntu/NIH_small"
PATH_TO_MODEL='/home/ubuntu/informationbottleneck/model/results/checkpoint_best'
label_path='/home/ubuntu/informationbottleneck/model/labels'
#heatmap_dir='/home/ubuntu/results/grad_cam'
#out_dir='/home/ubuntu'
#file_name='sensitivity_n.json'

heatmap_dir='/home/ubuntu/results/ib_new_init'
out_dir='/home/ubuntu'
file_name='insertion_deletion_ib_new_init.json'

python eval_sensitivity_n.py $heatmap_dir $out_dir $PATH_TO_IMAGES $PATH_TO_MODEL $label_path $file_name


heatmap_dir='/home/ubuntu/results/integrated_gradients'
out_dir='/home/ubuntu'
file_name='insertion_deletion_integrated_gradients.json'

python eval_sensitivity_n.py $heatmap_dir $out_dir $PATH_TO_IMAGES $PATH_TO_MODEL $label_path $file_name