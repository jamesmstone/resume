#!/bin/bash
jsonresume ()
{
	export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD="true"
    	docker build -t jsonresume .
	docker run --rm -it -v "$(pwd)":/data/ jsonresume "$@"
}
jsonresume export flat.html
jsonresume export -t elegant index.html
#sudo tee -a index.html < fork.html
sudo tee -a index.html < analytics.html
