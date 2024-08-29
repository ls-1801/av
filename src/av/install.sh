#!/bin/sh
set -e

echo "Activating feature 'av'"

AV_VERSION="0.0.42"
wget https://github.com/aviator-co/av/releases/download/v${AV_VERSION}/av_${AV_VERSION}_linux_$(dpkg --print-architecture).deb
apt install ./av_${AV_VERSION}_linux_$(dpkg --print-architecture).deb

echo "Installed av $(av version)"