#!/bin/sh

lines=$(cat $1)

rm combinaisons.txt
touch combinaisons.txt

for a in $lines; do
	for b in $lines; do
		echo $a $b >> combinaisons.txt
	done
done
