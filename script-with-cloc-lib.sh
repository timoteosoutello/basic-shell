#!/bin/sh

FILE="result.txt"
echo "" > $FILE

for dir in $(ls)
do
	echo "Collecting data from" >> $FILE
	cloc $dir >> $FILE
	echo "Data collected with success" >> $FILE
done
