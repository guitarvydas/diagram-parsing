#!/bin/bash

swipl -g 'consult(fb).' \
      -g 'consult(designrule).' \
      -g 'printOrphans.' \
      -g 'halt.' \
      > errors.txt
if grep 'FATAL' errors.txt
then
    echo quitting
    exit 1
fi

