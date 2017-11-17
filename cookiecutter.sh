#!/bin/bash

# cookiecutter script - data science project

# Creator: Johannes Harmse

# Script that creates a generic data science project folder structure.

# arg_1="5"
# p_out="Awe"
dest_out="Root"
license_out="Templates/LICENSE/GNU_v3.md"

while getopts ":a:p:l:" opt; do
  case $opt in
    a) arg_1="$OPTARG"
    ;;
    p) dest_out="$OPTARG"
    ;;
    l) license_out="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&3
    ;;
  esac
done

if [ $dest_out=="Root" ] && [ ! -d $dest_out ]
then
  mkdir $dest_out
fi

cp $license_out "$dest_out/LICENSE.md"

# printf "Argument p_out is %s\n" "$p_out"
# printf "Argument arg_1 is %s\n" "$arg_1"
# printf "Argument l_out is %s\n" "$l_out"
