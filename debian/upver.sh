#!/bin/sh
VERSION=`./gettag|sed 's/v//'`
dch -r $VERSION
dch -v $VERSION "Updated to $VERSION"
