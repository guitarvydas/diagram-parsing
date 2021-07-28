#!/bin/bash
./runrects.bash
mv fb.pl rects-fb.pl
./runports.bash
cat rects-fb.pl fb.pl >temp.pl
sort temp.pl >fb.pl
