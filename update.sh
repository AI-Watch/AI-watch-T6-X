#!/bin/bash
if [ $# -eq 0 ]; then
	echo "No arguments supplied"
else 
	cd /Users/vaccalo/AIWatchT6/AI-watch-T6-X/scripts
	./0-prepare-data.sh
	./1-create-pages.sh
	cd ..
	git add .
	git commit -m $1
	git push
fi

