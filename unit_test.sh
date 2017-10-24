#!/usr/bin/env bash
set -o nounset
set -o pipefail

echo "== Running unit tests (begin)"

source common.sh
python3 $(which py.test ) --verbose || die "Unit tests failed"

echo "== Running unit tests (end)"
