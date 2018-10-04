#!/bin/bash
#Function:rename files
#mname=0 #声明变量
for file in `ls *.org`    #遍历当前目录下的所有org文件
do
fname=${file:0:4}  #截取文件名的前4个字符
# bname=${file:0-8}  #截取文件名的后8个字符
bname=${file:5:20}
#let "mname = mname + 1"
built="built"
filename=$fname$built$bname  #拼接最终文件名
mv $file $filename    #修改该文件的文件名
done