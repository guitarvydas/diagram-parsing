#!/bin/bash
sort orphans.pl >fb.pl

./bb.bash >fb-bb.pl
cat fb.pl fb-bb.pl >temp.pl
sort temp.pl >fb.pl

swipl -g 'consult(fb).' \
      -g 'consult(containsport).' \
      -g 'printAllPortContains.' \
      -g 'halt.' \
      > fb-portcontains.pl
cat fb.pl fb-portcontains.pl >temp.pl
sort temp.pl >fb.pl

swipl -g 'consult(fb).' \
      -g 'consult(portdirection).' \
      -g 'printAllDirections.' \
      -g 'halt.' \
      > fb-directions.pl
cat fb.pl fb-directions.pl >temp.pl
sort temp.pl >fb.pl

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

