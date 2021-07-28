#!/bin/bash
sort diagram.pl >fb.pl

./run.bash >new-bb.pl
cat fb.pl new-bb.pl >temp.pl
sort temp.pl >fb.pl

swipl -g 'consult(fb).' \
      -g 'consult(contains3).' \
      -g 'factContains(d,e).'
      
