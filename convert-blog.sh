#!/bin/zsh

BACKGROUND="white"
mkdir -p 800x418
mkdir -p 800x520
mkdir -p 400x260
mkdir -p 220x126
convert -resize 800x418^ -background ${BACKGROUND} -crop 800x418+0+0 -gravity center $1 800x418/$1
convert -resize 800x520^ -background ${BACKGROUND} -crop 800x520+0+0 -gravity center $1 800x520/$1
convert -resize 400x260^ -background ${BACKGROUND} -crop 400x260+0+0 -gravity center $1 400x260/$1
convert -resize 220x126^ -background ${BACKGROUND} -crop 220x126+0+0 -gravity center $1 220x126/$1
