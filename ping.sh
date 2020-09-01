#!/bin/bash
pingfile=ip.txt
rm -rf info.txt
echo "ÕýÔÚ¼ì²â£¬ÇëÉÔµÈ" > info.txt
for i in `cat $pingfile`
do 
echo "$i" > sip.txt
echo "Check time:`date +"%Y-%m-%d %H:%M:%S"`   Host:`cat sip.txt`   Loss:`ping $i -c 4 | grep transmitted  | gawk '{print $6}'`   Ping:`ping $i -c 4 | grep avg | gawk -F / '{print $5}'` Server name:" >> sinfo.txt
done
rm -rf sip.txt
rm -rf info.txt
paste sinfo.txt name.txt >> info.txt
rm -rf sinfo.txt