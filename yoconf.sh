#!bin/bash
echo [config] > ~/.yo/yo.conf
echo APIKey = ef63a4f2-548a-46ef-924e-7141e0af2358 >> ~/.yo/yo.conf
echo -n "Username: "
	read yn_user
	echo Username = $yn_user >> ~/.yo/yo.conf
echo ""
echo "To use yo just type 'yo' followed by any command of your choice."
echo "Example:"
echo "--------"
echo "yo sudo ping -c 5 www.google.com"
echo "--------"
echo "Or just type yo -t to test your configuration."
