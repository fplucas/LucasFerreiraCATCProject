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

for command in ${commands[@]}; do
    echo Running $command
    $command
    echo
done
