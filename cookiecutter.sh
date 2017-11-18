#!/bin/bash

# cookiecutter script - data science project

# Creator: Johannes Harmse

# Script that creates a generic data science project folder structure.

# dest_out: destination folder in string format. Use "../" to go up a level.

dest_out="Root" # default destination folder
license_out="Templates/LICENSE/GNU_v3.md" #default license template
readme_out="Templates/README/Default.md" #default readme template
contributing_out="Templates/CONTRIBUTING/Default.md" #default contributing template

# get arguments if any has been entered

while getopts ":d:l:p:y:o:r:f:c:s:a:e:n:m:" opt; do
  case $opt in
    d) dest_out="$OPTARG" # Destination folder for structure
    ;;
    l) license_out="$OPTARG" # License file
    ;;
    p) project_out="$OPTARG" # short Project description
    ;;
    y) year_out="$OPTARG" # Year of license
    ;;
    o) owner_out="$OPTARG" # Owner of project
    ;;
    r) raw_out="$OPTARG" # Raw data folder
    ;;
    f) final_out="$OPTARG" # Final results folder
    ;;
    c) docs_out="$OPTARG" # doCuments folder
    ;;
    s) source_out="$OPTARG" # Source folder
    ;;
    a) additional_out="$OPTARG" # Additional documents folder
    ;;
    e) readme_out="$OPTARG" # readmE file location
    ;;
    n) contributing_out="$OPTARG" # coNtributing file location
    ;;
    m) name_out="$OPTARG" # naMe of project
    ;;
    \?) echo "Invalid option -$OPTARG" >&13
    ;;
  esac
done

# create destination folder if it does not exist

if [[ ! -d $dest_out ]]
then
  mkdir "$dest_out"
fi

# create LICENSE file

cp "$license_out" "$dest_out/LICENSE.md"

# create README file

cp "$readme_out" "$dest_out/README.md"

# create CONTRIBUTING file

cp "$contributing_out" "$dest_out/CONTRIBUTING.md"

# insert project info into LICENSE document

if [[ ! -z $project_out ]]
then
  sed -i "s/<one line to give the program's name and a brief idea of what it does.>/$project_out/g" "$dest_out/LICENSE.md"
fi

if [[ ! -z $year_out ]]
then
  sed -i "s/<YEAR>/$year_out/g" "$dest_out/LICENSE.md"
fi

if [[ ! -z $owner_out ]]
then
  sed -i "s/<OWNER>/$owner_out/g" "$dest_out/LICENSE.md"
fi

# insert project name info into README document

#echo $name_out

if [[ ! -z $name_out ]]
then
  sed -i "s/<Project Name>/$name_out/g" "$dest_out/README.md"
fi

# create additional folders

if [[ ! -z $raw_out ]]
then
  cp -r "$raw_out/." "$dest_out/data/"
else
  mkdir "$dest_out/data"
fi

if [[ ! -z $final_out ]]
then
  cp "$final_out/." "$dest_out/results/"
else
  mkdir "$dest_out/results"
fi

if [[ ! -z $docs_out ]]
then
  cp "$docs_out/." "$dest_out/docs/"
else
  mkdir "$dest_out/docs"
fi

if [[ ! -z $source_out ]]
then
  cp "$source_out/." "$dest_out/src/"
else
  mkdir "$dest_out/src"
fi

if [[ ! -z $additional_out ]]
then
  cp "$additional_out/." "$dest_out/additional/"
else
  mkdir "$dest_out/additional"
fi
