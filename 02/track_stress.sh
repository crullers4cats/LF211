## This little script is used with the LFS311 lab exercise
# on systemd startup files and their affect on a background# service. The "foo" service.
## The script looks for "stress" launched with a PPID of 1
# and it's chidren processes then uses the "ps" command
# to collect some information.

while [ true ]
do

# reset the variables to make sure we are picking up
# current information
PID=""
PID1=""

clear
echo "Hey, pal -  since you have started foo, $0 is running..."

# sift and sort the pid's
PID1=`ps -ef  | grep stress | grep -v grep | awk '{print $1,$2,$3,$6}' `
PID=`echo $PID1 |  grep "1 " | awk '{print $2}' `
echo "The pid for stress is $PID"
sleep 2
done

