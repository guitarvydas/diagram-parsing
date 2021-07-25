#!/bin/bash
sort diagram.pl >fb.pl
swipl -g 'consult(fb).' \
      -g 'consult(bounding_boxes).' \
      -g 'makebb(h)' \
      -g 'halt.'
