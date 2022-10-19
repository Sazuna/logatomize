#!/bin/bash

cat resources/french_ipa_dictionary.txt | grep -P "^$1\t/" | cut -d'/' -f2
