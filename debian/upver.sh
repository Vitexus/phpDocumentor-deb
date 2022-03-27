#!/bin/sh
VERSION=`./gettag`
dch -v $VERSION "Updated to $VERSION"
