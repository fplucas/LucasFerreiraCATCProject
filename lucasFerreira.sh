#!/bin/bash
commands=(
"date"
"hostname"
"arch"
"uname -a"
"uptime"
"whoami"
"who"
"w"
"top"
"history"
)
OUTPUT_FILE='./lucasFerreira.txt'

for command in ${commands[*]}; do
    echo Running $command >> $OUTPUT_FILE
    $command >> $OUTPUT_FILE
    echo >> $OUTPUT_FILE
done
