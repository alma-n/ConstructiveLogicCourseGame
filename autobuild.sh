#!/usr/bin/env sh

lake build
echo starting inotifywait
inotifywait -q -e close_write,moved_to,create -r -m ./Game.lean -m ./Game/ |
while read -r directory events filename; do
    lake build
done