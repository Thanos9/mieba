#!/bin/bash
#!/bin/sh 
today=`date +%Y%m%d`
cd /root/downloads/
git add . && git commit -m $today && git push
