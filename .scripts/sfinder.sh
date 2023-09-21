#!/bin/sh
# variables
sfinderBase="java -jar /home/mar/Documents/sfinderTools/solution-finder/sfinder.jar"
sfinderDefaultArgs="-d 180 -K /home/mar/Documents/sfinderTools/solution-finder/kicks/jstris180.properties"
commandType=$1
additionalArgs=${@:2}

# Theo setup finder
ssetupFinderBase="java -jar /home/mar/Documents/sfinderTools/sfinder-pcsetup-v0.2.1.jar"

# additional default arguments depending on type of commandType
if [ $commandType = "path" ]; then
    eval "$sfinderBase $commandType $sfinderDefaultArgs -f csv -k pattern $additionalArgs"
elif [ $commandType = "solves" ]; then
    eval "$sfinderBase path $sfinderDefaultArgs $additionalArgs"
elif [ $commandType = "util" ]; then
    additionalArgs=${@:3}
    subcommand=$2

    eval "$sfinderBase $commandType $subcommand $additionalArgs"
elif [ $commandType = "pcsetup" ]; then
    eval "$ssetupFinderBase pcsetup -d 180 $additionalArgs"
else
    eval "$sfinderBase $commandType $sfinderDefaultArgs $additionalArgs"
fi
