#!/bin/bash
sort ports.pl >fb.pl

./bb.bash >fb-bb.pl
cat fb.pl fb-bb.pl >temp.pl
sort temp.pl >fb.pl


