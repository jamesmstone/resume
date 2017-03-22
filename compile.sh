#!/bin/bash
set -e # Exit with nonzero exit code if anything fails

jsonresume ()
{
    docker run --rm -it -v "$(pwd)":/data/ svendowideit/jsonresume "$@"
}
jsonresume export flat.html
jsonresume -t elegant export index.html

jsonresume export -f pdf resume.pdf
