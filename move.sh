#!/bin/bash
#!/bin/sh 
#dest dir exists?
m=`date +%Y%m`
d=`date +%d`
destDir="/root/downloads/$m/01"

if [ $d > 15 ]; then
    destDir="root/downloads/$m/02"
fi

if [ ! -d "$destDir" ]; then  
    mkdir -p "$destDir" 
    chmod a+x "$destDir" 
fi


mv ./downloadsTmp/*/* $destDir
rm -rf ./downloadsTmp/*
