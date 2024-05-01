#!/usr/bin/bash

template="{% include embed-audio.html src='/assets/audio/2024-04-24-session/XXX' %}"

for track in *mp3;
do
	echo "\n${track%%.*} \n" >> tracks.md
	echo $template | sed "s/XXX/${track}/g" >> tracks.md;
done


