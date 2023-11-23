#!/bin/sh
#pandoc -s -t html5 --toc -c css/style.css README.md -o index.html
pandoc -s -t html5 -c css/style.css README.md -o index.html
pandoc -s -t latex --toc README.md -o README.pdf
