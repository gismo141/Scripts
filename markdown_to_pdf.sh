#!/bin/bash

TYPE="$1"
INPUT_FILES="$2"
OUTPUT_FILE=""
TEMPLATE="template.latex"
BIBLIOGRAPHY="/Users/michaelriedel/Dropbox/Latex/configuration/Bibtex/library.bib"
STYLE="/Users/michaelriedel/Dropbox/Latex/configuration/Bibtex/Styles/apa.csl"

if [ $# -gt 3 ]
then
	while shift && [ -n "$2" ]; do
		INPUT_FILES="${INPUT_FILES} $1"
	done
fi

for LAST; do true; done
	OUTPUT_FILE=$LAST


if [ $TYPE = "book" ]
then pandoc -s -N --template=$TEMPLATE --bibliography=$BIBLIOGRAPHY --biblatex --listings --toc --include-in-header ~/.pandoc/templates/listing.tex -f markdown+raw_tex --chapters $INPUT_FILES -o $OUTPUT_FILE
else pandoc -s -N --template=$TEMPLATE --bibliography=$BIBLIOGRAPHY --biblatex --listings --toc --include-in-header ~/.pandoc/templates/listing.tex -f markdown+raw_tex $INPUT_FILES -o $OUTPUT_FILE
fi