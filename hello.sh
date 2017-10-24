#!/usr/bin/env bash

echo "Configuring container (begin)"
sudo apt-get update
sudo apt-get install python3.4
apt install python3-pip
pushd pyfly-repo
pip3 install -r requirements.txt
echo "Configuring container (end)"
echo "sleeping..."
sleep 10
