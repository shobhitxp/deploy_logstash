#!/bin/bash

if ! command -v python >/dev/null; then
	echo "Python not found - Installing"
	sudo apt-get update
	sudo apt-get install python  --assume-yes
else
	echo "Python found - no installation needed"
fi