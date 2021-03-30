#!/bin/sh
echo "I was called with $# parameters"
echo "My name is $0"
echo "My name is `basename $0`"
echo "My first parameter is $1"
echo "My second parameter is $2"
echo "All parameters are $@"



## Using basename
# Note that basename only just strips the slashes from the path
pathname="/home/dir/data/filename"
result=$(basename "$pathname")
echo $result

## A short loop changing file name using 
# basename and input from the user
for file in *$1; do
if [ -f $file ]; then
 mv $file `basename $file .$1`.$2
fi
done