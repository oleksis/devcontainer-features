#!/bin/bash

# This test file will be executed against an auto-generated devcontainer.json that
# includes the 'python-launcher' feature with no options.
#
# Eg:
# {
#    "image": "<..some-base-image...>",
#    "features": {
#      "python-launcher": {}
#    }
# }
#
# Thus, the value of all options will fall back to the default value in 
# the feature's 'devcontainer-feature.json'.
# For the 'python-launcher' feature, that means the default favorite greeting is '4.3.0'.
#
# These scripts are run as 'root' by default. Although that can be changed
# with the --remote-user flag.
# 
# This test can be run with the following command (from the root of this repo)
#    devcontainer features test \ 
#                   --features python-launcher \
#                   --base-image mcr.microsoft.com/devcontainers/base:ubuntu .

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

# Feature-specific tests
# The 'check' command comes from the dev-container-features-test-lib.
check "Python Launcher for Unix Help" py --help

# Report results
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
