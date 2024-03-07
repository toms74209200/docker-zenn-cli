#!/bin/bash

set -e

# check articles and books directories
if [ ! -d "articles" ] || [ ! -d "books" ]; then
  zenn init
fi

trap 'kill -TERM $PID' TERM INT

zenn $@ &

PID=$!
wait $PID
trap - TERM INT
wait $PID
EXIT_STATUS=$?
