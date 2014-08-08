#!/bin/bash
#####
#
# Author: Michael Riedel, 2014
#
# This script prints the parameters for all the scripts in the given directory.
# Each script needs to have a usage()-function.
#
#####
set -e
# Any subsequent commands which fail will cause the shell script to exit immediately

# color-codes
RED='\033[31m'
GREEN='\033[32m'
NC='\033[0m'

# format-codes
BOLD=`tput bold`
NB=`tput sgr0`

PWD=$(pwd)

usage() {
    echo "Usage: $0 [FOLDER]"
    echo "  FOLDER:  the folder to look for scripts and their arguments"
    exit 1;
}

# Check input
if [ "$#" -eq "1" ]; then
    PWD=$1
    OLDPWD=$(pwd)
    cd $PWD
elif [ "$#" -gt "1" ]; then
    echo "Too many Parameters given!"
    usage
fi

# Check the files in the given folder
for file in *.sh; do
    if [ "$file" == "*.sh" ]; then
        echo "No executable script was found in this folder!"
        exit 1
    fi
    PARAMS=$(grep -m 1 "Usage" $file | cut -d' ' -f 8- | sed -e 's/\"$//')
    echo -e -n "${RED}${BOLD}$file${NC}${NB} "
    if [ -z "$PARAMS" ]; then
        echo "No Usage()-function!"
    else
        echo $PARAMS
    fi
done