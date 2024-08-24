#!/bin/bash

path="src/pdfs"
base="src/"
ext=".xopp"

if [ -d $path ]
then
    for file in src/*.xopp ; do
        suf="${file#$base}" ;

        xournalpp -p "$path/${suf%$ext}.pdf" "${file}" ;
        done ;

else
    echo "/src/pdfs not found. Creating..."
    mkdir $path
    for file in src/*.xopp ; do
        suf="${file#$base}" ;

        xournalpp -p "$path/${suf%$ext}.pdf" "${file}" ;
        done ;

fi
