#!/usr/bin/env bash

source config.sh

inputDir=$INPUTPATH
outputDir=$OUTPUTPATH
convertSlides=$SLIDES

echo "inputDir => $inputDir"
echo "outputDir => $outputDir"
echo "convertSlides => $convertSlides"

docker run \
    -v $PWD/:/app \
    -e INPUT_SLIDES=$convertSlides \
    -e INPUT_INPUTPATH=$inputDir \
    -e INPUT_OUTPUTPATH=$outputDir \
     quirinecker/asciidoctor-convert
