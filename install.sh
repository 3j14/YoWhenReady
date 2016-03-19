#/bin/bash

DIRINSTALL=~/.yo
DIR="${BASH_SOURCE%/*}"

if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

install_yo () {
  mkdir $DIRINSTALL

  cp $DIR/yo.py $DIRINSTALL/
  cp $DIR/yo.conf $DIRINSTALL/
  cp $DIR/yoconf.sh $DIRINSTALL/
  cp -r $DIR/requests $DIRINSTALL/
  cp $DIR/yo $DIRINSTALL/

  sudo chmod +x $DIRINSTALL/yo

  echo \#yo >> ~/.bash_profile
  echo export PATH=\$PATH:$DIRINSTALL/ >> ~/.bash_profile
  export PATH=$PATH:$DIRINSTALL/
  
  echo -n "Username: "
  	read yn_user
  	sudo echo Username = $yn_user >> ~/.yo/yo.conf
  echo ""
  echo "To use yo just type 'yo' followed by any command of your choice."
  echo "Example:"
  echo "--------"
  echo "yo sudo ping -c 5 www.google.com"
  echo "--------"
  echo "Or just type yo -t to test your configuration."
  echo ""
  echo "Type 'yo -c' to reconfigure yo."
}

while true; do
    read -p "You are about to install yo. Continue? Y/n " yn
    case $yn in
        [Yy]* ) install_yo
        break;;
        * ) echo "Installation aborted!"
        break;;
    esac
done
