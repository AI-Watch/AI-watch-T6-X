#!/bin/bash
if [ $# -eq 0 ]; then
	echo "No arguments supplied"
else 
	cd ./catalog
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

