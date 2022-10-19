#!/bin/bash

FILE_15_WORDS=$1
mkdir ipas

for WORD in $(cat $FILE_15_WORDS)
do
	rm ipas/ipa_$WORD.txt
	for WORD2 in $(echo $WORD | tr "_" "  " | sed "s/'/' /g")
	do	
		script/make_ipa.sh $WORD2 >> ipas/ipa_$WORD.txt
	done
done

echo "_" > ipas/ipa__.txt
