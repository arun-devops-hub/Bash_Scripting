#!/bin/bash

# Check if ip.txt exists
if [ ! -f ip.txt ]; then
    echo "ip.txt file not found!"
    exit 1
fi

# Loop through each line in ip.txt
while IFS= read -r ip; do
    if [[ -n "$ip" ]]; then  # Check if the line is not empty
        echo "Pinging $ip..."
        ping -c 4 "$ip" > /dev/null 2>&1  # Send 4 ping requests
        if [ $? -eq 0 ]; then
            echo "Ping to $ip succeeded."
        else
            echo "Ping to $ip failed."
        fi
    fi
done < ip.txt


Explanation:
#!/bin/bash: This specifies that the script should be run using the Bash shell.

if [ ! -f ip.txt ]; then: This checks if the ip.txt file exists in the current directory.

while IFS= read -r ip; do: This loops through each line in the ip.txt file. IFS= is used to prevent trimming leading/trailing whitespace, and -r prevents backslashes from being interpreted as escape characters.

ping -c 4 "$ip": The ping command sends 4 packets (-c 4) to the IP address. You can adjust the number of packets if needed.

if [ $? -eq 0 ]; then: This checks the exit status of the ping command. An exit status of 0 means the ping was successful.

> /dev/null 2>&1: This redirects both the output and errors of the ping command to /dev/null, effectively silencing them. You can remove this if you want to see the ping output.
