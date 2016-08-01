#/bin/bash

DIRINSTALL=~/.ywr
CURRENTDIR="${BASH_SOURCE%/*}"

USEREXISTS="{
  \"exists\": true
}"

R="$(tput setaf 1)"
RESET="$(tput sgr0)"

if [[ ! -d "$CURRENTDIR" ]]; then CURRENTDIR="$PWD"; fi

install_ywr () {
  rm -rf $DIRINSTALL
  mkdir $DIRINSTALL

  cp $CURRENTDIR/ywr.py $DIRINSTALL/
  cp $CURRENTDIR/ywr.conf $DIRINSTALL/
  cp $CURRENTDIR/confywr.sh $DIRINSTALL/
  cp -r $CURRENTDIR/requests $DIRINSTALL/
  cp $CURRENTDIR/ywr $DIRINSTALL/

  if [[ $UID != 0 ]]; then
	echo ""
    echo -e "${R}Why you no sudo?"
	echo -e "No worries, I got you covered. I can do this sudo thing too!"
	echo -e "Just enter your root password:${RESET}"
	sudo chmod +x $DIRINSTALL/ywr
else
		chmod +x $DIRINSTALL/ywr
fi

  touch ~/.bash_profile

  echo \#ywr >> ~/.bash_profile
  echo export PATH=\$PATH:$DIRINSTALL/ >> ~/.bash_profile

  export PATH=$PATH:$DIRINSTALL/

  echo -e "I need your username for YO!"

  while true; do
	  echo -n "Username: "
	  read username
	  STATUS=$(curl -s "https://api.justyo.co/check_username/?api_token=ef63a4f2-548a-46ef-924e-7141e0af2358&username=$username")
	  if [ "$STATUS" == "$USEREXISTS" ]
	  	then
		echo "User exists!"
	  	sudo echo Username = $username >> ~/.ywr/ywr.conf
		break
		else
		echo "User does not exists."
	fi
  done

  echo ""
  echo "To use ywr just type 'ywr' followed by any command of your choice."
  echo "Example:"
  echo "--------"
  echo "ywr sudo npm install -g express"
  echo "--------"
  echo "Or just type ywr -t to test your configuration."
  echo ""
  echo "Type 'ywr -c' to reconfigure yo."
}

while true; do
    read -p "You are about to install ywr. Continue? Y/n " yn
    case $yn in
        [Yy]* ) install_ywr
        break;;
        * ) echo "Installation aborted!"
        break;;
    esac
done
