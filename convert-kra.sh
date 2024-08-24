#!/bin/bash

path="src/pngs"
base="src/"
ext=".kra"

if [ -d $path ]
then
    for file in src/*.kra ; do
        suf="${file#$base}" ;

        krita "${file}" --export --export-filename "$path/${suf%$ext}.png" ;
        done ;

else
    echo "/src/pngs not found. Creating..."
    mkdir $path
    for file in src/*.kra ; do
        suf="${file#$base}" ;

        krita "${file}" --export --export-filename "$path/${suf%$ext}.png" ;
        done ;

fi
