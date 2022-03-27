#!/bin/sh
VERSION=`./gettag|sed 's/v//'`
dch -v $VERSION "Updated to $VERSION"
