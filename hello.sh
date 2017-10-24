#!/usr/bin/env bash

echo "Configuring container (begin)"
apt install python3
apt install python3-pip
pushd pyfly-repo
pip3 install -r requirements.txt
echo "Configuring container (end)"
echo "sleeping..."
sleep 10
