#!/bin/sh
VERSION=$(curl -s https://api.github.com/repos/phpDocumentor/phpDocumentor/releases/latest | jq -r .tag_name)
if [ -z "$VERSION" ] || [ "$VERSION" = "null" ]; then
	VERSION=$(curl -s https://github.com/phpDocumentor/phpDocumentor/releases | grep -oP 'href="/phpDocumentor/phpDocumentor/releases/tag/\K[^"]+' | head -1)
	if [ -z "$VERSION" ]; then
		echo "Error: Could not fetch latest release version from GitHub (got: '$VERSION')." >&2
		exit 1
	fi
fi
VERSION=${VERSION#v}
dch -r $VERSION
dch -v $VERSION "Updated to $VERSION"
