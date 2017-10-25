#!/usr/bin/env bash

declare -r out_dir="marker"
echo "Making markers in $(pwd)/${out_dir} (start)"
mkdir -p "$out_dir"
echo "file1" > "$out_dir/file1"
echo "file2" > "$out_dir/file2"
echo "file3" > "$out_dir/file3"
echo "file4" > "$out_dir/file4"
ls $out_dir/*
echo "Making markers in $(pwd)/${out_dir} (end)"
