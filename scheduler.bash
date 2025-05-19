#!/bin/bash

TASKFOLDER="./tasks/"
LOCKFILE="_tasks.lock"

while true; do   
    file=$(flock "$LOCKFILE" ./get_next.bash $TASKFOLDER)
    
    if [[ $file != "" ]]; then
        bash $file;
        rm $file;
    else
        break
    fi
done