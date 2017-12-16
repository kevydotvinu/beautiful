#!/bin/bash
#
# NAME
#	Push - Update new post in linuxmate.ml
#
# SYNOPSIS
#	bash push.sh
#
# DESCRIPTION
#	Run inside the blog directory
#
# CHANGELOG
#	* Sat Dec 16 2017 Vinu K <kevy.vinu@gmail.com
#	- Original

if [[ -d _includes ]]; then
	echo "Last Updated $(date)" > _includes/time.html
	git add .
	git commit -m "modified with script"
	git push origin master
else
	echo "No such file like time.html"
fi
