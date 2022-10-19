#!/bin/bash

word0=$1
sentence=$word0

file="words/$word0.txt"
nexts=$(cat $file | wc -l)
next_word_number=$((1 + $RANDOM %nexts))
next_word=$(cat $file | head -$next_word_number | tail -1)
sentence="$sentence $next_word"
word0=$next_word

while [ $word0 != _ ]; do
	file="words/$word0.txt"
	nexts=$(cat $file | wc -l)
	next_word_number=$((1 + $RANDOM %nexts))
	next_word=$(cat $file | head -$next_word_number | tail -1)
	sentence="$sentence $next_word"
	word0=$next_word
done

echo $sentence
