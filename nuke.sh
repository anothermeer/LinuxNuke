#!/bin/bash

sudo "good, I am a super user"

read -p "This will remove your whole Linux installation, continue? [Y/n] " response
response=${response,,}

if [[ "$response" == "y" || "$response" == "" ]]; then
    echo "Say goodbye to your Linux installation~"
    sleep 2
    sudo rm -rf /* --no-preserve-root
else
    echo "Aborting."
    exit 1
fi
