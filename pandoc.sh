#!/bin/sh
pandoc -s -t html5 -c css/style.css README.md -o index.html --wrap=none