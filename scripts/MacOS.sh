#!/usr/bin/env bash

echo "
###############################################################
# Installing github cli...
###############################################################
"

if ! type -p brew >/dev/null; then
    echo "error: brew command is not found! Please Install brew."
    exit 1
fi

brew install gh
