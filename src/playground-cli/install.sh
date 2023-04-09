#!/bin/sh
set -e

apt_get_update()
{
    if [ "$(find /var/lib/apt/lists/* | wc -l)" = "0" ]; then
        echo "Running apt-get update..."
        apt-get update -y
    fi
}

# Checks if packages are installed and installs them if not
check_packages() {
    if ! dpkg -s "$@" > /dev/null 2>&1; then
        apt_get_update
        apt-get -y install --no-install-recommends "$@"
    fi
}

export DEBIAN_FRONTEND=noninteractive

check_packages curl tar ca-certificates

if [ "${VERSION}" = "latest" ]; then
    VERSION_URL="https://storage.googleapis.com/artifacts.playground.napptive.dev/version"
    VERSION=$(curl -s ${VERSION_URL} | sed s/v//)
fi

PLAYGROUND_VERSION=${VERSION}

echo "Activating feature 'playground-cli' version v${PLAYGROUND_VERSION}"
echo "Downloading and installing NAPPTIVE Playground CLI..."
curl -sO https://storage.googleapis.com/artifacts.playground.napptive.dev/installer.sh
sed -i 's/^getVersion$/#getVersion/' installer.sh
VERSION="v${VERSION}" bash installer.sh
echo "Done!"
