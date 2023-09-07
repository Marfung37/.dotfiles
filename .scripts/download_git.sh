#!/bin/bash
git_repo=$1
dir_name=$(echo $git_repo | sed 's/^.*\/\(.*\)\.git$/\1/')
simple_dir_name=$(echo $dir_name | sed 's/leyk-csce221-//')

if [ -d $dir_name ]; then
    rm -rf $dir_name
fi

eval "/usr/bin/git clone $git_repo"
rm -rf "$dir_name/.git"
mv $dir_name $simple_dir_name
