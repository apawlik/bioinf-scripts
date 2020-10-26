#!/bin/bash
# This is an example script for organising your workspace (files and directories)
# before you start anaylysing data. 

## STEP 1
## 1.1 Make sure we are in home directory.
## 1.2 create a project directory (if it doesn't exist) and navigate into it

cd $HOME

if [ -d my_project ] 
then
   echo "You have already set up the project folder"
else
   mkdir my_project
fi

cd my_project

## STEP 2 Get the data
## 2.1 Create a directory for the data 
## 2.2 Download the data from online source
if [ -d data ]
then
   echo "You already set up a directory for your data." 
else
   mkdir data
fi

cd data

curl -L https://github.com/apawlik/bioinf-scripts/raw/master/shell-scripting/data/untrimmed_fastq.zip -o untrimmed_fastq.zip

unzip untrimmed_fastq.zip
mv untrimmed_fastq.zip/* .
rm -r untrimmed_fastq.zip/


curl -L https://github.com/apawlik/bioinf-scripts/raw/master/shell-scripting/data/sample-data.zip -o sample-data.zip
unzip sample-data.zip
mv sample-data.zip/* .
rm -r sample-data.zip/

## STEP 3 sort the data files into 
### 3.1 create sub-folders for data
### 3.2 Move files with the same extensions to corresponding sub-folders
if [ -d fasta ] 
then
   echo 'fasta directory exists inside data!'
else
   mkdir fasta
fi  

for filename in *
do 
   case $filename in 
      *.fasta)
         echo "Moving $filename into fasta directory"
         ;;
      *)
         ;;
     esac
done

########### End of section for organising data ##################



## Pre-cleaning data
##########

cd $HOME/my_project/data/untrimmed_fastq
for filename in *
do 
  if [ "grep -n "NNN" $filename" ]
  then
    sed "s/$filename/incorrect $filename/" $filename > incorrect_$filename
  fi
done








