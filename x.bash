#!/bin/bash
sort diagram.pl >fb.pl
./bb.bash >fb-bb.pl

cat fb.pl fb-bb.pl >temp.pl
sort temp.pl >fb.pl

swipl -g 'consult(fb).' \
      -g 'consult(contain).' \
      -g 'allContains1.' \
      -g 'halt.'

