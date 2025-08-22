#!/bin/sh
VERSION=$(curl -s https://api.github.com/repos/phpDocumentor/phpDocumentor/releases/latest | jq -r .tag_name)
if [ -z "$VERSION" ]; then
	echo "Error: Could not fetch latest release version from GitHub." >&2
	exit 1
fi
VERSION=${VERSION#v}
dch -r $VERSION
dch -v $VERSION "Updated to $VERSION"
