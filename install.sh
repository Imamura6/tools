#!/usr/bin/env bash

SCRIPTS_PATH="scripts/*"
for script in $SCRIPTS_PATH
do
    script_path=$(readlink -f $script)
    script_link="/bin/$(basename $script_path)"
    ln -s $script_path $script_link
done
