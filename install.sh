#/bin/bash

DIRINSTALL=~/.ywr
CURRENTDIR="${BASH_SOURCE%/*}"

if [[ ! -d "$CURRENTDIR" ]]; then CURRENTDIR="$PWD"; fi

install_ywr () {
  rm -rf $DIRINSTALL
  mkdir $DIRINSTALL

  cp $CURRENTDIR/ywr.py $DIRINSTALL/
  cp $CURRENTDIR/ywr.conf $DIRINSTALL/
  cp $CURRENTDIR/confywr.sh $DIRINSTALL/
  cp -r $CURRENTDIR/requests $DIRINSTALL/
  cp $CURRENTDIR/ywr $DIRINSTALL/

  sudo chmod +x $DIRINSTALL/ywr

  touch ~/.bash_profile

  echo \#ywr >> ~/.bash_profile
  echo export PATH=\$PATH:$DIRINSTALL/ >> ~/.bash_profile

  export PATH=$PATH:$DIRINSTALL/

  echo -n "Username: "
  	read yn_user
  	sudo echo Username = $yn_user >> ~/.ywr/ywr.conf
  echo ""
  echo "To use ywr just type 'ywr' followed by any command of your choice."
  echo "Example:"
  echo "--------"
  echo "ywr sudo ping -c 5 www.google.com"
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
