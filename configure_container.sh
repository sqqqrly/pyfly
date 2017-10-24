#!/usr/bin/env bash

function die {
    local msg=“$1”
    (>&2 echo Fatal: “$msg”)  # Subshell avoids interactions with other redirections
    exit 1
}


echo "== Configuring container (begin)"

DEBIAN_FRONTEND=noninteractive apt-get update -y || die "apt update failed"
DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python3.4 \
    python3-pip || die "apt install failed"
DEBIAN_FRONTEND=noninteractive apt-get clean -y || die "apt install failed"
pip3 install -r requirements.txt || die "pyfly pip requirements failed"
pip3 install pytest-flask || die "pytest-flask install failed"

echo "== Configuring container (end)"
