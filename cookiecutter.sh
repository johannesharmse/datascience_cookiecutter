#!/bin/bash

# cookiecutter script - data science project

# Creator: Johannes Harmse

# Script that creates a generic data science project folder structure.

# dest_out: destination folder in string format. Use "../" to go up a level.

dest_out="Root" # default destination folder
license_out="Templates/LICENSE/GNU_v3.md" #default license template

# get arguments if any has been entered

while getopts ":d:l:" opt; do
  case $opt in
    d) dest_out="$OPTARG"
    ;;
    l) license_out="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    ;;
  esac
done

# create destination folder if it does not exist

if [ ! -d $dest_out ]
then
  mkdir $dest_out
fi

# create folder structure and files

cp $license_out "$dest_out/LICENSE.md"
mkdir "$dest_out/data"
mkdir "$dest_out/docs"
mkdir "$dest_out/results"
mkdir "$dest_out/src"
