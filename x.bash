#!/bin/bash
sort ports.pl >fb.pl

./runports.bash >fb-portcontains.pl
cat fb.pl fb-portcontains.pl >temp.pl
sort temp.pl >fb.pl

swipl -g 'consult(fb).' \
      -g 'consult(portdirection).'
