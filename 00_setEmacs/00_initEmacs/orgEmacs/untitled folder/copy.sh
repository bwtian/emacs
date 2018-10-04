#!/bin/bash
#Function:rename files
#mname=0 #声明变量
for file in `ls *.org`    #遍历当前目录下的所有org文件
do
fname=${file:0:4}  #截取文件名的前4个字符
# bname=${file:0-8}  #截取文件名的后8个字符
bname=${file:6:30}
#let "mname = mname + 1"
#built="built"
n=${file:1:2}
let "m=n+5"
p="p"
e="e"
xname=${file:3:4}
filename=$e$m$xname$p$bname  #拼接最终文件名
cp $file $filename    #修改该文件的文件名
done
