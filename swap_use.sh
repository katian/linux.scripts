#!/bin/bash

# ce script donne la liste des processus qui utilisent le swap

find /proc -maxdepth 2 -path "/proc/[0-9]*/status" -readable -exec awk -v FS=":" '{process[$1]=$2;sub(/^[ \t]+/,"",process[$1]);} END {if(process["VmSwap"] && process["VmSwap"] != "0 kB") printf "%10s %-30s %20s\n",process["Pid"],process["Name"],process["VmSwap"]}' '{}' \; | awk '{print $(NF-1),$0}' | sort -h | cut -d " " -f2-

# voir https://sleeplessbeastie.eu/2016/12/26/how-to-display-processes-using-swap-space/

# v0.1 - 2021-0510 - creation

