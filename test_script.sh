#!/bin/bash


for i in {1..100}; do
    while true; do
        curl localhost:8888 >/dev/null &
        sleep 0.000000001
    done
done
