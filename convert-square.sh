#!/bin/zsh

BACKGROUND="white"
DIMENSION=`identify $1 | awk '{print $3}'`
# echo ${DIMENSION}
W=${DIMENSION%x*}
H=${DIMENSION#*x}
# echo $W
# echo $H
mkdir -p square
if [[ "$W" -eq "$H" ]]; then
  echo "square"
  cp $1 square/$1
elif [[ "$W" -gt "$H" ]]; then
  echo "landscape"
  convert $1 -resize ${W}x -background ${BACKGROUND} -gravity center -extent ${W}x${W} square/$1
else
  echo "portlait"
  convert $1 -resize x${H} -background ${BACKGROUND} -gravity center -extent ${H}x${H} square/$1
fi
