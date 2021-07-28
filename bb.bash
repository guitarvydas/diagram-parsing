#!/bin/bash
swipl -g 'consult(fb).' \
      -g 'consult(bounding_boxes).' \
      -g 'makeAllBB' \
      -g 'halt.'
