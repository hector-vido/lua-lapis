#!/bin/bash

if [ -z $1 ]; then
	echo 'Usage: bash build-all.sh <dockerid>'
	exit
fi

for DIR in 'alpine3.12' 'buster'; do
	DISTRO=$(echo $DIR | grep -o '[a-z]*')
	for TYPE in full slim; do
		docker build -t "$1/lapis:$DISTRO-$TYPE" $DIR
	done
done

docker tag "$1/lapis:buster-full" "$1/lapis:latest"
docker tag "$1/lapis:buster-full" "$1/lapis:buster"
docker tag "$1/lapis:alpine-full" "$1/lapis:alpine"
