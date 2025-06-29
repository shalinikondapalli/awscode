#!/bin/bash
#check if the apache2 is installed
dpkg -l apache2 &> /dev/null
if [ $? -eq 0 ]; then
	echo "Already Installed apache2 package"
else
	apt-get update &> /dev/null
	apt-get install apache2 -y
	if [ $? -eq 0 ]; then
		echo "Successfully installed apache2 package"
	else
		echo "Error occurred while installing apache2 package"
	fi
fi
