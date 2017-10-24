#!/usr/bin/env bash

echo "Configuring container (begin)"
DEBIAN_FRONTEND=noninteractive apt-get update -y &&\
	DEBIAN_FRONTEND=noninteractive apt-get install -y\
	python3.4 \
	python3-pip &&\
	DEBIAN_FRONTEND=noninteractive apt-get clean
pushd pyfly-repo
pip3 install -r requirements.txt
echo "Configuring container (end)"
