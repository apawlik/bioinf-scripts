# A short script to append a string (tag) at the end of all lines starting with @ in the file
# This string (tag) is generated from the filename and prefix "/1__novis__" and suffix "454FWD"

# **Note** Because of differences in GNU and BSD sed standards this script may need modifications if you are using it on Mac OS X 
# This is because we use perl regex in grep (you may have to install ggrep on Mac and change grep -> ggrep)
# There may also be some differences in behaviour of sed command between GNU and BSD.

# Inputs: 
# fastq files with filename pattern matching *_L001.filtered.PE150.fastq

# Outputs:
# fastq files with a tag appended to all lines starting with @ and filename maching the pattern "*_L001.filtered.PE150.fastq_processed"

#!/bin/bash

for filename in *_L001.filtered.PE150.fastq; do
        temp=(`echo $filename | grep -P -o '^.+_L\d+'`)      
        tag="/1__novis__$temp""454FWD"
        sed '/^@/s/$/\'$tag'/g' $filename > $filename"_processed"
done