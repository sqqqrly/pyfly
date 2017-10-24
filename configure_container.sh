#!/usr/bin/env bash

echo "== Configuring container (begin)"

DEBIAN_FRONTEND=noninteractive apt-get update -y &&\
	DEBIAN_FRONTEND=noninteractive apt-get install -y\
	python3.4 \
	python3-pip &&\
	DEBIAN_FRONTEND=noninteractive apt-get clean &&
pip3 install -r requirements.txt &&
pip3 install pytest-flask &&

pushd pyfly || (2>&1 echo "Error: configure_container failed")

echo "== Configuring container (end)"
