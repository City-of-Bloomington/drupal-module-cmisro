#!/bin/bash
BUILD=./build
DIST=./dist

if [ ! -d $BUILD ]
	then mkdir $BUILD
fi

if [ ! -d $DIST ]
	then mkdir $DIST
fi

rsync -rlv --exclude-from=./buildignore --delete ./ ./build/

tar czvf $DIST/cmisro.tar.gz --transform=s/build/cmisro/ $BUILD
