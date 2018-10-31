#!/bin/bash

lang=$(setxkbmap -query | grep layout | sed 's/layout.* //g')

if [[ $lang == "br" ]]
then
    setxkbmap us
    notify-send Layout US
elif [[ $lang == "us" ]]
then
    setxkbmap br
    notify-send Layout BR
fi

