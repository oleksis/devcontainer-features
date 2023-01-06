#!/bin/sh
set -e

PYLAUNCH_VERSION=${VERSION}
echo "Activating feature 'python-launcher' version v${PYLAUNCH_VERSION}"

# XZ
which xz > /dev/null || (apt-get update -y && apt-get install --no-install-recommends -y xz-utils)

echo "Downloading and installing Python Launcher for Unix"
curl --location --remote-name https://github.com/brettcannon/python-launcher/releases/download/v1.0.0/python_launcher-1.0.0-x86_64-unknown-linux-gnu.tar.xz
tar --extract --strip-components 1 --directory /usr/local --file python_launcher-1.0.0-x86_64-unknown-linux-gnu.tar.xz
# Clean up
rm -f python_launcher-1.0.0-x86_64-unknown-linux-gnu.tar.xz
rm -rf /var/lib/apt/lists/*
echo "Done!"
