#!/usr/bin/env bash
set -o nounset
set -o pipefail

echo "== Running unit tests (begin)"

pushd pyfly > /dev/null
source common.sh
python3 $(which py.test ) --verbose || die "Unit tests failed"
popd > /dev/null

echo "== Running unit tests (end)"
