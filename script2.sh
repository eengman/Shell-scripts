#! /bin/bash

# 1) List all the user connected to your current machine and the number of connections
w 

# 2) List the name of the last 7 users who were connected yesterday before 2pm
last -7 -t '2021-02-01 14:00:00'

# 3) List the short hostname of the current machine you are connected to 
echo "Host name:"
hostname 

# 4) Check if google.com is alive. Only 3 attempts should be allowed
wget --spider address -t 3 https://www.google.com 

# 5) Clear the screen
echo "Clear the screen? y/n"
read response
if [[ "$response" == "y" ]]
then 
    echo "Clearing the screen"
    clear 
else 
    echo "Clearing the screen anyways"
    clear
fi

# 6) Provide the IP address for www.cwu.edu and www.google.com

host www.google.com 
host www.cwu.edu 

# 7) List the system date

date

# 8) List for how long the current system is running

echo "Here is how long the system has been up":
uptime

# 9) Count how many users and daemons are in the current Linux system
who | grep -c .

# 10) List all the files opened in the current Linux system and list all the files opened by a certain user
ls -la /proc/$$/fd

# 11) When was registered a certain website (for example google.com)
echo "Google.com was registered: "
whois google.com | grep "Creation Date:"