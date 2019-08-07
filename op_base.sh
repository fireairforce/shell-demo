#!/usr/bin/env bash
mkdir code 
cd code 
for((i=0;i<3;i++)); do
  touch test_${i}.txt
  echo "shell 很简单的" >> test_${i}.txt
done
   