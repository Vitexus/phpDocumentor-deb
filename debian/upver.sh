#!/bin/sh
VERSION=$(curl -s https://api.github.com/repos/phpDocumentor/phpDocumentor/releases/latest | grep 'tag_name' | cut -d '"' -f4 | sed 's/v//')
dch -r $VERSION
dch -v $VERSION "Updated to $VERSION"
