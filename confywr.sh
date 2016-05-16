#!bin/bash

CONFIGFILE=~/.ywr/ywr.conf

# overwrite conf file
echo [config] > $CONFIGFILE

# adding APIKey
echo APIKey = ef63a4f2-548a-46ef-924e-7141e0af2358 >> $CONFIGFILE

# asking for username
echo -n "Username: "
	read yn_user
	echo Username = $yn_user >> $CONFIGFILE

echo ""
echo "To use ywr just type 'ywr' followed by any command of your choice."
echo "Example:"
echo "--------"
echo "ywr sudo ping -c 5 www.google.com"
echo "--------"
echo "Or just type ywr -t to test your configuration."
