#!/bin/bash

for i in {1..100}; do
    for j in {1..100}; do  # replace the infinite loop with a loop that iterates a fixed number of times
        curl localhost:8000
        sleep 0.000000001
    done
done
