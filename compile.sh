#!/bin/bash
set -e # Exit with nonzero exit code if anything fails

jsonresume ()
{
    docker build -t jsonresume .
    docker run --rm -it -v "$(pwd)":/data/ jsonresume "$@"
}
jsonresume export flat.html
jsonresume export -t elegant index.html
#sudo tee -a index.html < fork.html
sudo tee -a index.html < analytics.html
jsonresume export -f pdf resume.pdf
