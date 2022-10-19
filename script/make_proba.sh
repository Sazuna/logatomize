#!/bin/bash

file=possibilites.txt

rm -r words
mkdir words

for line in $(cat $file | tr " " ":"); do
	word1=$(echo $line | cut -d':' -f1)
	word2=$(echo $line | cut -d':' -f2)
	#echo $word1 $word2
	echo $word2 >> "words/$word1.txt"
done
