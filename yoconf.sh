#!bin/bash
echo "Go to 'https://dev.justyo.co'" 
echo "Then press '+ ADD ACCOUNT' and give it a name."
echo "Press 'Create'"
echo "Press 'View API Key'" 
echo -n "API KEY: > "
	read yn_key
	sudo echo [config] > /usr/share/yo/yo.conf
	sudo echo APIKey = $yn_key >> /usr/share/yo/yo.conf
echo -n "Username that should recieve the YO push notification > "
	read yn_user
	sudo echo Username = $yn_user >> /usr/share/yo/yo.conf
echo ""
echo "To use yo just type 'yo' followed by any command of your choice."
echo "Example:"
echo "--------"
echo "yo sudo ping -c 5 www.google.com"
echo "--------"
echo "Or just type yo -t to test your configuration."
