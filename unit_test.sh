#!/usr/bin/env bash
set -o nounset
set -o pipefail

echo "== Running unit tests (begin)"
source common.sh
cd pyfly/ || die "Cannot find pyfly/"
python3 $(which py.test) || die "Unit tests failed"
echo "== Running unit tests (end)"
