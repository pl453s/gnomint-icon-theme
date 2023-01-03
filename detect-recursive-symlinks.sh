#!/bin/bash
bak=$(pwd)
for path in Gnomint/*/*
do
	cd "$path"
	for icon in *
	do
		link1=$(readlink $icon)
		if [ "$link1" ]
		then
			link2=$(readlink $link1)
			if [ "$link2" ]
			then
				echo "$path : $icon --> $link1 --> $link2"  
			fi
		fi
	done
	cd "$bak"
done
