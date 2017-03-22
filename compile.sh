#!/bin/bash
set -e # Exit with nonzero exit code if anything fails

jsonresume ()
{
    docker run --rm -it -v "$(pwd)":/data/ svendowideit/jsonresume "$@"
}
jsonresume export -r résumé.json index.html
jsonresume export -r résumé.json -f pdf resume.pdf
