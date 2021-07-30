#!/bin/bash
clear
set -e
trap 'catch' ERR

catch () {
    echo '*** fatal error in run.bash'
    exit 1
}

./runrects.bash
mv fb.pl rects-fb.pl
./runports.bash
cat rects-fb.pl fb.pl >temp.pl
sort temp.pl >fb.pl

./rundesignrule.bash

