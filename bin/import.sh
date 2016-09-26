#!/usr/bin/env bash

set -e -u -x -o pipefail

REPO=$1
pushd $REPO
  # ORDERED_TAGS=$(git log --tags --simplify-by-decoration --pretty="format:%ci %d" | egrep "\(tag: v\d+\.\d+\.\d+\)$")

  # echo -e $ORDERED_TAGS
  # echo 1st
  # echo $ORDERED_TAGS[0]

  git log --tags --simplify-by-decoration --pretty="format:%ci %d" | \
  egrep "\(tag: v\d+\.\d+\.\d+\)$" | \
  sort -r | \
  while read -r line ; do
    echo "Processing $line"
  done
popd

exit 0
