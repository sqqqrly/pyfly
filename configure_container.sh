#!/usr/bin/env bash
set -o nounset
set -o pipefail

echo "== Configuring container (begin) from $(pwd)"

pushd pyfly > /dev/null
source common.sh
DEBIAN_FRONTEND=noninteractive apt-get update -y || die "apt update failed"
DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python3.4 \
    python3-pip                                  || die "apt install failed"
DEBIAN_FRONTEND=noninteractive apt-get clean -y  || die "apt clean failed"
pip3 install -r requirements.txt                 || die "pyfly pip requirements failed"
popd > /dev/null

echo "== Configuring container (end)"
