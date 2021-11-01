#!/bin/bash

# ce script modifie la politique du processeur, il nécessite le mot de passe root

# utilisation :

# $ ./cpufreq-set-all.sh ondemand
# $ ./cpufreq-set-all.sh performance
# $ ./cpufreq-set-all.sh powersave

set -e

MAX_CPU=$((`nproc --all` - 1))

for i in $(seq 0 $MAX_CPU); do
	echo "Changing CPU " $i " with parameter "$@;
	sudo cpufreq-set -c $i -g $@ ;
done

# v0.1 - 2021-1027 - creation
