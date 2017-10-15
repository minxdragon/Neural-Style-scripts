#!/bin/bash

#name of file
a=“name-“ 	

#extension of file
b=".png" 		

#output label
c="out-"	

#change the sequence number for the amount of images
for i in $(seq 0 137)	
do


inputfile=$a$i$b

outputfile=$c$i$b

iterationamount=$i


#neural style settings here use your favorites
#change the path to information to your neural style folder location

th neural_style.lua -style_image  /path/to/neural-style/cup.jpg -content_image /path/to/neural-style/folder/$inputfile -output_image /path/to/neural-style/outputfolder/$outputfile -gpu -1 -print_iter 1  -num_iterations 100 -image_size 512 -style_scale 1 -backend nn -optimizer adam -init image -style_weight 200 -content_weight 80 -normalize_gradients


echo $outputfile

done