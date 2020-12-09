#!/bin/sh -l
cd /github/workspace
echo "Running..."
ls
plantuml $1
ls
ls src
echo "Done!"