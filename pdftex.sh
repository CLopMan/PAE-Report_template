#!/bin/bash

# Parameters evaluation
if [ $# -eq 0 ]; then # no params
    printf "usage: pdftex <tex-file> [n] [bibliography]\n\t- n: number of compilations (default 3)\n\t- bibliography: flag if not null existance of bibliography will be assumed\n"
    exit 1;
elif [ $# -eq 1 ]; then # default number of compilations 
    n=3
else
    if ! [[ "$2" =~ ^-?[0-9]+?$ ]]; then # custom number of compilations
        echo "Not valid argument: must be int"    
        exit 2
    fi
    # evth ok
    n=$2
fi

# 
name=$(basename $1 | cut -d. -f1)
printf "Compiling: \033[0;33m$1\033[0m\nnumber of compilations = $n\n"

pdflatex $1 
if ! [ -z "$3" ]; then 
    echo "generating bibliography for $name"
    biber $name

fi

for i in $(seq 0 $n)
do
    pdflatex $1
done

echo "" # blank line

printf "moving this files to build: $(ls | grep $name | grep -v tex | grep -v xmpdata | grep -v pdf)\n"

mkdir -p build
for i in $(ls | grep $name | grep -v tex | grep -v xmpdata | grep -v pdf); do mv $i build/$i; done

mv $name.pdf build/
