#!/bin/bash

FILE="possibilites.txt"
rm logatomes.txt

for line in $(cat $FILE | sed "s/ /:/g")
do
	combination=
	for word in $(echo $line | sed "s/:/ /g")
	do
		combination="$combination  $(cat ipas/ipa_$word.txt)"
	done
	echo $combination >> logatomes.txt
done
