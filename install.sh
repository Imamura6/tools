#!/usr/bin/env bash

SCRIPTS_PATH="$(dirname $(readlink -f $0))/scripts/*"
for script in $SCRIPTS_PATH
do
    script_path=$(readlink -f $script)
    script_link="/bin/$(basename $script_path)"
    ln -s $script_path $script_link
done
