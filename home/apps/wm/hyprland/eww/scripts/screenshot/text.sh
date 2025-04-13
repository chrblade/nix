#!/bin/sh

# * Write you directory screenshots
DIRECTORY="Documents/screens"
COM=$(ls -l ~/$DIRECTORY | wc -l)

echo "Screens maked: $COM"
