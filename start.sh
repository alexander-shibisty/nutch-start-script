#!/bin/bash

if(!(ps axu | grep -v grep | grep nutch >/dev/null));
then
	echo "nutch not run"
	./bin/crawl file:///usr/search/nutch/urls/seeds.txt games http://local 10 >> ./logs/crawl.log &
else
	echo "nutch run"
fi
