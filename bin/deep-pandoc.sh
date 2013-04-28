#!/usr/bin/env sh

#
# This script will take in a file of the form *.md.pdf and move it to 
# *.pdf
#

BASENAME=/usr/bin/basename
DIRNAME=/usr/bin/dirname
MV=/bin/mv
FIND=/usr/bin/find

for file in $(find . -name \*.md)
do
    result=$($DIRNAME $file)/$($BASENAME $file .md).pdf;
    pandoc --toc --smart --variable geometry:"a4paper" $file -o $result;
done

