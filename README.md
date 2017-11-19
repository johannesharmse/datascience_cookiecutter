#  Data Science Cookie Cutter

**Creator:** Johannes Harmse

**Contributor:** Johannes Harmse

**Creation Date:** 18 November 2017

This project has been developed to automate the process of creating a file structure for a data science project.

The bash script creates the following folders and files. These objects will either be created by default or can be specified when running the script:

* **Root/Destination Folder:** This folder serves as the new data science project root folder.

* **LICENSE File:** A license file gets added to the project root folder. The aim of this file is to stipulate legal use and distribution of the project.

* **README File:** A README file gets added to the project root folder. This file aims to serve as a summary document outlining the data science project.

* **CONTRIBUTING File:** A CONTRIBUTING file gets added to the project root folder. This document outlines the guidelines for contributing towards the project.

* **Data Folder:** This folder contains all raw data files used for the project.

* **Results Folder:** This folder contains all results obtained from the project.

* **Documents Folder:** This folder contains all additional relevant documentation regarding the project, such as client or project requirements and communication.

* **Source Folder:** The source folder should include all relevant scripts used for the project.

* **Additional Folder:** The additional folder serves as a location for any files that is not appropriate for any of the other folders. Files can be images, graphs, notes, etc.

## How to install

To install the data science cookie cutter you need to have the repository available on the machine that you will be using for your data science project. The easiest way of doing this is to either clone or download this repository using the green button at the top right of this page.

If you are planning on using the script more than once, it is suggested to add the repository location to your PATH for ease of use.

You can either add the repository files to a folder that is already in your PATH, such as `usr/bin`, or add the location of the folder to your PATH.

## How to use

You can create a data science file structure by running the following shell command:

*In the same fashion as other shell commands, the folder structure will be created relative to the location of the running script.*

`bash cookiecutter.sh [options]`

`[options]` refers to the arguments you can use when creating the file structure. The arguments are listed below:

`-h` (Eg. `bash cookiecutter.sh -h "all"`) Use this to get help in this script. `all` has to be specified as the argument value such as in the example. It cannot be used in combination with any of the other arguments below.

`-d` (Eg. `bash cookiecutter.sh -d "Data Science Project/Project 1"`) Destination folder path. If not specified, a default `Root` folder will be created.

`-l` (Eg. `bash cookiecutter.sh -l "My LICENSES/My Own License.md"`) License file path. If not specified, the default License file will be added from the Templates folder.

`-p` (Eg. `bash cookiecutter.sh -p "This data science project answers life's biggest questions."`) short Project description. The description will be added to the LICENSE.md file. If not specified, it needs to be added at a later stage.

`-y` (Eg. `bash cookiecutter.sh -y2017`) Year of project license. The year will be added to the LICENSE.md file. If not specified, it needs to be added at a later stage.

`-o` (Eg. `bash cookiecutter.sh -o "Johannes Harmse"`) Owner of project. The owner's name will be added to the LICENSE.md file. If not specified, it needs to be added at a later stage.

`-r` (Eg. `bash cookiecutter.sh -r "Datasets/Project 1 Data"`)  Raw project dataset folder path. If not specified, an empty `data` folder will be created.

`-f` (Eg. `bash cookiecutter.sh -f "Solutions/Project 1 Results"`)  Final results project folder path. If not specified, an empty `results` folder will be created.

`-c` (Eg. `bash cookiecutter.sh -c "Project 1/Docs"`)  doCument folder related to project. If not specified, an empty `docs` folder will be created.

`-s` (Eg. `bash cookiecutter.sh -s "Project 1/scripts"`)  project Source script folder path. If not specified, an empty `src` folder will be created.

`-a` (Eg. `bash cookiecutter.sh -a "Project 1/communication"`) Miscellaneous(Additional) project files folder path. If not specified, an empty `additional` folder will be created.

`-e` (Eg. `bash cookiecutter.sh -e "Project 1/My Project README.md"`) readmE file path. If not specified, the default Readme file will be added from the Templates folder.

`-n` (Eg. `bash cookiecutter.sh -n "My Contributing Agreement.md"`) coNtributing file path. If not specified, the default coNtributing file will be added from the Templates folder.

`-m` (Eg. `bash cookiecutter.sh -m "Project 1"`) naMe of the project. The project name will be used in the README.md file.

The following is an **example** for running the script with multiple arguments:

`bash cookiecutter.sh -d "Data Science/Project 1" -p "This project solves the world's problems" -y2017 -r ../../My\ Project/raw -m "Project 1"`

## How to contribute

If you would like to contribute towards this project, please read through the following document first:

[Data Science Cookie Cutter License](https://github.com/johannesharmse/datascience_cookiecutter/blob/master/CONTRIBUTING.md)

## Credits

Credit goes towards the University of British Columbia's Master of Data Science department for giving the class of 2018 this lab assignment.

## License

The license for this project can be viewed here:

[Data Science Cookie Cutter License](https://github.com/johannesharmse/datascience_cookiecutter/blob/master/LICENSE)
