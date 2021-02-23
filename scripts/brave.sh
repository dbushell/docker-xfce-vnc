#!/bin/bash

curl https://brave-browser-apt-release.s3.brave.com/brave-core.asc \
  | gpg --dearmor > brave-browser-release.gpg

sudo install -o root -g root -m 644 \
  brave-browser-release.gpg /etc/apt/trusted.gpg.d/

sudo rm brave-browser-release.gpg

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" \
  | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install -y brave-browser
