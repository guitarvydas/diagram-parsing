#!/bin/bash
sort diagram.pl >fb.pl

./bb.bash >fb-bb.pl
cat fb.pl fb-bb.pl >temp.pl
sort temp.pl >fb.pl

swipl -g 'consult(fb).' \
      -g 'consult(contain).' \
      -g 'allContains1.' \
      -g 'halt.' \
      > fb-contains1.pl
cat fb.pl fb-contains1.pl >temp.pl
sort temp.pl >fb.pl

swipl -g 'consult(fb).' \
      -g 'consult(contain2).' \
      -g 'printAllDeepContains.'\
      -g 'halt.' \
      > fb-deepcontains.pl
cat fb.pl fb-deepcontains.pl >temp.pl
sort temp.pl >fb.pl

swipl -g 'consult(fb).' \
      -g 'consult(contain3).' \
      -g 'printAllDirectContains.'\
      -g 'halt.' \
      > fb-directcontains.pl
cat fb.pl fb-directcontains.pl >temp.pl
sort temp.pl >fb.pl




