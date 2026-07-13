#!/bin/bash

<<info
This shell script will take periodic backups

Usage:
./backup.sh <source> <destination>
src     /home/ubuntu/scripts
dest    /home/ubuntu/backup-scripts
info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" "$src"

echo "Backup completed"

echo "$dest/backup-$timestamp.zip"

