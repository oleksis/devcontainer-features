#!/bin/sh
set -e

PLAYGROUND_VERSION=${VERSION}
echo "Activating feature 'playground-cli' version v${PLAYGROUND_VERSION}"

echo "Downloading and installing NAPPTIVE Playground CLI"
curl -O https://storage.googleapis.com/artifacts.playground.napptive.dev/installer.sh && bash installer.sh
echo "Done!"
