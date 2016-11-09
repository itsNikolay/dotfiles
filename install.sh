#!/bin/bash

for i in $(ls -Ad .* | grep ".[a-zA-Z0-9]"); do
  echo $i;
done
