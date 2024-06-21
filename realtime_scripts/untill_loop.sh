# The until loop is similar to the while loop but continues executing until a condition becomes true.
#!/bin/bash
num=0
until [ $num -ge 5 ]; do
echo "Number: $num"
((num++))
done
