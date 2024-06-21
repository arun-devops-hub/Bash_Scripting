# The for loop iterates over a list of items and performs the specified commands for each item.
#!/bin/bash

echo "Basic loop over list of items:"
for color in red green blue
do
  echo "Color: $color"
done

echo

echo "Loop over a range of numbers:"
for i in {1..5}
do
  echo "Number: $i"
done

echo

echo "Loop over a range of numbers with a step:"
for i in {1..10..2}
do
  echo "Number: $i"
done

echo

echo "Processing files in a directory:"
for file in /path/to/directory/*
do
  if [ -f "$file" ]; then
    echo "File: $file"
  fi
done

echo

echo "C-style for loop:"
for ((i=1; i<=5; i++))
do
  echo "Number: $i"
done

echo

echo "Nested for loop:"
for i in {1..3}
do
  for j in {a..c}
  do
    echo "Combination: $i$j"
  done
done
