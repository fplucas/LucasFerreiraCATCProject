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
#        top is a TUI (terminal user interface) application,
#        therefore, it was locking my script waiting for me
#        to interact with it. The solution I found to prevent
#        it from happening was in the top command manual
#        (man top)
#        -b, --batch
#          Starts top in Batch mode, which could be useful for sending output from top to other programs or to a file.  In this mode, top  will  not  accept
#          input and runs until the iterations limit you've set with the ‘-n’ command-line option or until killed.
#        -n, --iterations = NUMBER
#          Specifies the maximum number of iterations, or frames, top should produce before ending.
"top -bn1"
"history"
)
OUTPUT_FILE='./lucasFerreira.txt'

for command in "${commands[@]}"; do
    echo Running $command >> $OUTPUT_FILE
    $command >> $OUTPUT_FILE
    echo >> $OUTPUT_FILE
done
