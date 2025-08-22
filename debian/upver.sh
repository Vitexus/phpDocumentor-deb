#!/bin/sh
VERSION=$(curl -s https://api.github.com/repos/phpDocumentor/phpDocumentor/releases/latest | grep '"tag_name"' | head -1 | awk -F: '{gsub(/[", ]/,"",$2); print $2}')
if [ -z "$VERSION" ]; then
	echo "Error: Could not fetch latest release version from GitHub." >&2
	exit 1
fi
VERSION=${VERSION#v}
dch -r $VERSION
dch -v $VERSION "Updated to $VERSION"
