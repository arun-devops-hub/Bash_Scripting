# The while loop repeatedly executes a block of code as long as a condition is true.

#!/bin/bash
count=5
while [ $count -le 5 ]; do
echo "Count: $count"
((count++))
done
