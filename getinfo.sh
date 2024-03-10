#!/bin/bash

DATE=$(date)
USERS=$(who)
UPTIME=$(uptime)

echo "Current time and date: $DATE"
echo "Users"
echo "$USERS"
echo "Uptime: $UPTIME"

# clear log.txt (dangerous?)
> log.txt
# write all of the variables to log.txt
# -e flag interprets the escape characters
echo -e "$DATE\n$USERS\n$UPTIME" >> log.txt

# exit code same as the echo
exit
