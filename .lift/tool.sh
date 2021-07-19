#!/usr/bin/env bash
dir=$1
commit=$2
cmd=$3 

function version() {
    echo 1
}

function applicable() {
    echo "true"
}

function run() {
    echo "[{ \"type\": \"Markdown Comments\", \
            \"message\": \"# Markdown Title\n\nMarkdown Body\", \
            \"file\": \"file.txt\", \
            \"line\": 3, \
          }]"
}

if [[ "$cmd" = "run" ]] ; then 
    run 
fi 
if [[ "$cmd" = "applicable" ]] ; then 
    applicable 
fi 
if [[ "$cmd" = "version" ]] ; then 
    version 
fi
