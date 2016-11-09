#!/bin/bash

# Install dotfiles

for i in $(ls -Ad .* | grep ".[^git$][a-zA-Z0-9]"); do
  echo $i;
  command="ln -sf $PWD/$i $HOME/$i";
  echo $command;
  $command;
done
