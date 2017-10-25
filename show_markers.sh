#!/usr/bin/env bash

declare -r out_dir="marker"
echo "listing markers in $(pwd)/${out_dir} (start)"
ls $out_dir/*
echo "listing markers in $(pwd)/${out_dir} (end)"
