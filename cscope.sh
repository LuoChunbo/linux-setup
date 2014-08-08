#!/bin/sh
#filename:cscope.sh


if [ "$1" == "kernel" ]
then
echo "Build cscope engineering information,Please wait!"
find  . ! -type l -regex ".*\.\(c\|cpp\|cc\|h\|hpp\|java\|xml\|S\)" > cscope.files
cscope -Rbkq cscope.files
else
echo "Build cscope engineering information,Please wait!"
#find  . ! -type l -regex ".*\.\(c\|cpp\|cc\|h\|hpp\|java\|xml\|S\)" > cscope.files

find . -name "*.h" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" > cscope.files

cscope -bkq -i cscope.files
#ctags -R
fi
