#!/bin/bash
if [ $# -eq 0 ]; then
	echo "No arguments supplied"
else 
	cd /Users/vaccalo/AIWatchT6/AI-watch-T6-data/output
	cp -R /Users/vaccalo/Downloads/List-of-Initiatives-AI-X-xlsx-v2.csv .
	cd /Users/vaccalo/AIWatchT6/AI-watch-T6-X/src
	cp -R /Users/vaccalo/AIWatchT6/AI-watch-T6-data/output/List-of-Initiatives-AI-X-xlsx-v2.csv ./9-services-ai-watch-t6-jrc120399.csv
	cd ../catalog
	rm *.html
	cd ../chart
	rm *.html
	cd ../data
	rm *.js
	rm *.json
	cd ../norm
	rm 9-*.json
	cd ../service
	rm *.html
	cd ../scripts
	./0-prepare-data.sh
	./1-create-pages.sh
	cd ..
	git add .
	git commit -m $1
	git push
fi

